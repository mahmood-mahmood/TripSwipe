import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:tripswipe/model/accessories_model.dart';
import 'package:tripswipe/model/autmobile_workshop_model.dart';
import 'package:tripswipe/model/auto_model.dart';
import 'package:tripswipe/model/car_model.dart';
import 'package:tripswipe/model/rent_car_bike_model.dart';
import 'package:tripswipe/model/user_model.dart';
import 'package:tripswipe/views/login.dart';

class Controller extends ChangeNotifier {
  //--------------------------FIREBASE------------------------------------------

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //---------------------------SIGNUP CONTROLLER--------------------------------
  final signupKey = GlobalKey<FormState>();
  TextEditingController signUpUsernameController = TextEditingController();
  TextEditingController signUpPhoneController = TextEditingController();
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPassController = TextEditingController();
  TextEditingController signUpPassConfrmController = TextEditingController();

  UserModel? _userModel;
  UserModel get userModel => _userModel!;

  Future<void> saveUser(String userid, String userName, int userPhone,
      String userEmail, String collectionName) async {
    _userModel = UserModel(
      userID: userid,
      userName: userName,
      userPhone: userPhone,
      userEmail: userEmail,
    );

    await firebaseFirestore
        .collection(collectionName)
        .doc(userid)
        .set(_userModel!.toMap());

    notifyListeners();
  }

  Future<void> signupUser(
    String userName,
    String userEmail,
    int userPhone,
    String userPassword,
    String collectionName,
    context,
  ) async {
    try {
      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
              email: userEmail, password: userPassword);
      final user = firebaseAuth.currentUser;
      user!.sendEmailVerification();
      await saveUser(
        userCredential.user!.uid,
        userName,
        userPhone,
        userEmail,
        collectionName,
      );
      myCustomAlert(context, '', userEmail, () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const Login(),
            ),
            (route) => false);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Pasword is too weak')));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Email already used')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  //---------------------------LOGIN CONTROLLER--------------------------------

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginpasswordController = TextEditingController();
  final loginKey = GlobalKey<FormState>();

  Future<void> userLogin(String userEmail, String userPassword, context,
      String collectionName, pageName) async {
    try {
      print('tryingg.............');
      await firebaseAuth.signInWithEmailAndPassword(
          email: userEmail, password: userPassword);
      final user = firebaseAuth.currentUser;
      final emailVerified = user!.emailVerified;
      print('Verification : $emailVerified');

      if (emailVerified == false) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Please verify your email')));
      } else {
        CollectionReference collection =
            firebaseFirestore.collection(collectionName);
        var userQuery = await collection.doc(user.uid).get();
        if (userQuery.exists) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => pageName),
              (route) => false);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('This email not registered')));
        }

        // setSignIn();
        clearLoginFields();
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      if (e.code == 'user-not-found') {
        print("1 $e");
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('No user found')));
      } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        print('2 $e');
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('No user found')));
      } else if (e.code == 'wrong-password') {
        print('3 $e');
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Incorrect password')));
      }
    } catch (e) {
      print('4 $e');
    }
    notifyListeners();
  }

  void clearLoginFields() {
    loginEmailController.clear();
    loginpasswordController.clear();
    notifyListeners();
  }

  //--------------------------FETCH PROVIDER--------------------------------------

  String? _uid;
  String get uid => _uid!;
  Future fetchProvider(String collectionName) async {
    try {
      await firebaseFirestore
          .collection(collectionName)
          .doc(firebaseAuth.currentUser!.uid)
          .get()
          .then((DocumentSnapshot snapshot) {
        _userModel = UserModel(
            userID: snapshot['userID'],
            userName: snapshot['userName'],
            userPhone: snapshot['userPhone'],
            userEmail: snapshot['userEmail']);
        _uid = userModel.userID;
      });
    } catch (e) {
      print('fetching failed : $e');
    }
  }

  //--------------------------CUSTOM ALERT--------------------------------------
  myCustomAlert(context, message, email, Function onTap) {
    CoolAlert.show(
        onConfirmBtnTap: () {
          onTap;
        },
        backgroundColor: Colors.blue,
        title: 'Verification',
        text: 'A verification link sent to $email. Verify email before login.',
        confirmBtnColor: Colors.blueAccent,
        context: context,
        type: CoolAlertType.info,
        widget: Container(
          alignment: Alignment.center,
          child: Column(
            children: [Text(message)],
          ),
        ),
        width: 300);
    notifyListeners();
  }

  // List<CarTravellerModel> carsList = [];
  // CarTravellerModel? cars;

  // Future<void> fetchCars() async {
  //   try {
  //     print('-----fetching cars-----------');
  //     carsList.clear();
  //     CollectionReference carsRef = firebaseFirestore
  //         .collection('providers')
  //         .doc()
  //         .collection('cars');
  //     QuerySnapshot carsSnapshot = await carsRef.get();
  //     for (var doc in carsSnapshot.docs) {
  //       String carType = doc['carType'];
  //       String brandName = doc['brandName'];
  //       int price = doc['price'];
  //       String photo = doc['photo'];
  //       int contact = doc['contact'];
  //       String vehNumber = doc['vehNumber'];
  //       String locationName = doc['locationName'];

  //       cars = CarTravellerModel(
  //           carType: carType,
  //           brandName: brandName,
  //           price: price,
  //           photo: photo,
  //           contact: contact,
  //           vehNumber: vehNumber,
  //           locationName: locationName);

  //       carsList.add(cars!);
  //       print('-----fetching completed-----------');
  //       // notifyListeners();
  //     }
  //   } catch (e) {
  //     print('car fetching failed : $e');
  //   }
  // }

  List<CarTravellerModel> carsList = [];
  CarTravellerModel? cars;

  Future<void> fetchCars(String collectionName) async {
    try {
      print('-----fetching cars-----------');
      carsList.clear();
      CollectionReference carsRef = firebaseFirestore.collection('providers');

      QuerySnapshot carsSnapshot = await carsRef.get();

      for (var doc in carsSnapshot.docs) {
        CollectionReference carsCollectionRef =
            doc.reference.collection(collectionName);

        QuerySnapshot carsCollectionSnapshot = await carsCollectionRef.get();

        for (var carDoc in carsCollectionSnapshot.docs) {
          String carType = carDoc['carType'];
          String brandName = carDoc['brandName'];
          int price = carDoc['price'];
          String photo = carDoc['photo'];
          int contact = carDoc['contact'];
          String vehNumber = carDoc['vehNumber'];
          String locationName = carDoc['locationName'];
          String providerName = carDoc['providerName'];

          cars = CarTravellerModel(
            carType: carType,
            brandName: brandName,
            price: price,
            photo: photo,
            contact: contact,
            vehNumber: vehNumber,
            locationName: locationName,
            providerName: providerName,
          );

          carsList.add(cars!);
        }
      }

      print('-----fetching completed-----------');
      // notifyListeners();
    } catch (e) {
      print('car fetching failed : $e');
    }
  }

  Future<void> fetchCarsByCategory(
      String CollectionName, String carType) async {
    try {
      print('-----fetching cars-----------');
      carsList.clear();
      CollectionReference carsRef = firebaseFirestore.collection('providers');

      QuerySnapshot carsSnapshot = await carsRef.get();

      for (var doc in carsSnapshot.docs) {
        CollectionReference carsCollectionRef =
            doc.reference.collection(CollectionName);

        QuerySnapshot carsCollectionSnapshot =
            await carsCollectionRef.where('carType', isEqualTo: carType).get();

        for (var carDoc in carsCollectionSnapshot.docs) {
          String carType = carDoc['carType'];
          String brandName = carDoc['brandName'];
          int price = carDoc['price'];
          String photo = carDoc['photo'];
          int contact = carDoc['contact'];
          String vehNumber = carDoc['vehNumber'];
          String locationName = carDoc['locationName'];
          String providerName = carDoc['providerName'];

          cars = CarTravellerModel(
            carType: carType,
            brandName: brandName,
            price: price,
            photo: photo,
            contact: contact,
            vehNumber: vehNumber,
            locationName: locationName,
            providerName: providerName,
          );

          carsList.add(cars!);
        }
      }

      print('-----fetching completed-----------');
      // notifyListeners();
    } catch (e) {
      print('car fetching failed : $e');
    }
  }

  List<AutoModel> autosList = [];
  AutoModel? autos;

  Future<void> fetchAutos() async {
    try {
      autosList.clear();

      CollectionReference autosRef = firebaseFirestore.collection('providers');
      QuerySnapshot autoSnapshot = await autosRef.get();

      for (var doc in autoSnapshot.docs) {
        CollectionReference autoCollectionRef =
            doc.reference.collection('autos');
        QuerySnapshot autosCollectionSnapshot = await autoCollectionRef.get();

        for (var autoDoc in autosCollectionSnapshot.docs) {
          String brandName = autoDoc['brandName'];
          int price = autoDoc['price'];
          String photo = autoDoc['photo'];
          int contact = autoDoc['contact'];
          String vehNumber = autoDoc['vehNumber'];
          String locationName = autoDoc['locationName'];
          String providerName = autoDoc['providerName'];

          autos = AutoModel(
              brandName: brandName,
              price: price,
              photo: photo,
              contact: contact,
              vehNumber: vehNumber,
              locationName: locationName,
              providerName: providerName);

          autosList.add(autos!);
        }
      }
    } catch (e) {
      print('Auto fetching failed : $e');
    }
  }

  List<RentVehicleModel> rentVehicleList = [];
  RentVehicleModel? rentVehicles;

  Future<void> fetchRentVehicles(String collectionName) async {
    try {
      rentVehicleList.clear();

      CollectionReference rentVehiclesRef =
          firebaseFirestore.collection('providers');
      QuerySnapshot rentVehiclesSnapshot = await rentVehiclesRef.get();

      for (var doc in rentVehiclesSnapshot.docs) {
        CollectionReference rentVehiclesCollectionRef =
            doc.reference.collection(collectionName);
        QuerySnapshot rentVehiclesCollectionSnapshot =
            await rentVehiclesCollectionRef.get();

        for (var rentVehiclesDoc in rentVehiclesCollectionSnapshot.docs) {
          String vehicleID = rentVehiclesDoc['vehicleID'];
          String vehicleType = rentVehiclesDoc['vehicleType'];
          String brandName = rentVehiclesDoc['brandName'];
          int price = rentVehiclesDoc['price'];
          String photo = rentVehiclesDoc['photo'];
          int contact = rentVehiclesDoc['contact'];
          String vehNumber = rentVehiclesDoc['vehNumber'];
          String locationName = rentVehiclesDoc['locationName'];

          rentVehicles = RentVehicleModel(
              vehicleID: vehicleID,
              vehicleType: vehicleType,
              brandName: brandName,
              price: price,
              photo: photo,
              contact: contact,
              vehNumber: vehNumber,
              locationName: locationName);

          rentVehicleList.add(rentVehicles!);
        }
      }
    } catch (e) {
      print('Rent Vehicles fetching failed : $e');
    }
  }

  void callingFunction(String phone) {
    FlutterPhoneDirectCaller.callNumber(phone);
    log('calling.... $phone');
  }

  List<Map<String, dynamic>> accessoriesList = [];
  List<String> collections = [
    'wheels',
    'lights',
    'bodyParts',
    'helmets',
  ];

  Future<void> fetchAccessories() async {
    try {
      accessoriesList.clear();
      QuerySnapshot<Map<String, dynamic>> providerQuerySnapshot =
          await firebaseFirestore.collection('providers').get();
      for (var providerDoc in providerQuerySnapshot.docs) {
        for (String collectionName in collections) {
          QuerySnapshot<Map<String, dynamic>> accessoriesSnapshot =
              await providerDoc.reference.collection(collectionName).get();

          accessoriesList
              .addAll(accessoriesSnapshot.docs.map((doc) => doc.data()));
        }
      }
    } catch (e) {
      print('Fetching Accessories failed : $e');
    }
  }

  List<Map<String, dynamic>> workshopsList = [];
  List<String> workshopCollections = [
    'Bike Workshop',
    'Car Workshop',
  ];

  Future<void> fetchWokshops() async {
    try {
      workshopsList.clear();
      QuerySnapshot<Map<String, dynamic>> providerQuerySnapshot =
          await firebaseFirestore.collection('providers').get();
      for (var providerDoc in providerQuerySnapshot.docs) {
        for (String collectionName in workshopCollections) {
          QuerySnapshot<Map<String, dynamic>> workshopSnapshot =
              await providerDoc.reference.collection(collectionName).get();

          workshopsList.addAll(workshopSnapshot.docs.map((doc) => doc.data()));
        }
      }
    } catch (e) {
      print('Fetching Workshop failed : $e');
    }
  }
}
