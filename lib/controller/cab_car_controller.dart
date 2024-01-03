import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tripswipe/model/accessories_model.dart';
import 'package:tripswipe/model/autmobile_workshop_model.dart';
import 'package:tripswipe/model/rent_car_bike_model.dart';
import 'package:tripswipe/model/auto_model.dart';
import 'package:tripswipe/model/car_model.dart';

class CabController extends ChangeNotifier {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  //--------------------CAR---------------------------------------

  final cabCarAddKey = GlobalKey<FormState>();
  TextEditingController carBrandNameController = TextEditingController();
  TextEditingController carPriceController = TextEditingController();
  TextEditingController carPhotoController = TextEditingController();
  TextEditingController carContactController = TextEditingController();
  TextEditingController carNumberController = TextEditingController();
  TextEditingController carLocationController = TextEditingController();

  String? cars;

  changeCartype(value) {
    cars = value;
    notifyListeners();
  }

  CarTravellerModel? _carTravellerModel;
  CarTravellerModel get carTravellerModel => _carTravellerModel!;

  Future<void> saveCar(
    String carType,
    String brandName,
    int price,
    String photo,
    int contact,
    String vehNumber,
    String locationName,
    String collectionName,
    String providerName,
  ) async {
    try {
      final data = firebaseFirestore
          .collection('providers')
          .doc(firebaseAuth.currentUser!.uid);
      final docs = data.collection(collectionName).doc();
      _carTravellerModel = CarTravellerModel(
        carID: docs.id,
        carType: carType,
        brandName: brandName,
        price: price,
        photo: photo,
        contact: contact,
        vehNumber: vehNumber,
        locationName: locationName,
        providerName: providerName,
      );

      docs.set(_carTravellerModel!.toMap(docs.id));
      print('Successfully stored');
      notifyListeners();
    } catch (e) {
      print('Save car failed : $e');
    }
  }

  Future<String> storeImagetoStorge(String ref, File file) async {
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    UploadTask uploadTask =
        firebaseStorage.ref().child(ref).putFile(file, metadata);
    TaskSnapshot snapshot = await uploadTask;
    String downloadURL = await snapshot.ref.getDownloadURL();
    log(downloadURL);
    notifyListeners();
    return downloadURL;
  }

  File? cabPic;

  Future<File> pickcabPhoto(context) async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedImage != null) {
        cabPic = File(pickedImage.path);
      }
    } catch (e) {
      print(e);
    }
    notifyListeners();
    return cabPic!;
  }

  Future<void> selectcabPic(
      context, TextEditingController photoController) async {
    cabPic = await pickcabPhoto(context);
    photoController.text = cabPic!.path;
    notifyListeners();
  }

  uploadCabPhoto(File cabPhoto, String carName) async {
    try {
      await storeImagetoStorge(
              '${firebaseAuth.currentUser!.uid}/Cabs Pics/Cars/$carName',
              cabPhoto)
          .then((value) async {
        carTravellerModel.photo = value;

        DocumentReference docRef = firebaseFirestore
            .collection('providers')
            .doc(firebaseAuth.currentUser!.uid)
            .collection('cars')
            .doc(carTravellerModel.carID);
        docRef.update({'photo': value});
      });
      _carTravellerModel = carTravellerModel;
      print('Pic uploaded successfully');
      clearCarsField();
      notifyListeners();
    } catch (e) {
      print('image upload failed :$e');
    }
  }

  void clearCarsField() {
    carBrandNameController.clear();
    carPriceController.clear();
    carPhotoController.clear();
    carContactController.clear();
    carNumberController.clear();
    carLocationController.clear();
    notifyListeners();
  }

  //--------------------TRAVELLER---------------------------------------

  final travellerAddKey = GlobalKey<FormState>();
  TextEditingController travellerBrandNameController = TextEditingController();
  TextEditingController travellerPriceController = TextEditingController();
  TextEditingController travellerPhotoController = TextEditingController();
  TextEditingController travellerContactController = TextEditingController();
  TextEditingController travellerNumberController = TextEditingController();
  TextEditingController travellerLocationController = TextEditingController();

  String? traveller;

  changeTravellertype(value) {
    traveller = value;
    notifyListeners();
  }

  uploadTravellerPhoto(File travellerPhoto, String travellerName) async {
    try {
      await storeImagetoStorge(
              '${firebaseAuth.currentUser!.uid}/Cabs Pics/Travellers/$travellerName',
              travellerPhoto)
          .then((value) async {
        carTravellerModel.photo = value;

        DocumentReference docRef = firebaseFirestore
            .collection('providers')
            .doc(firebaseAuth.currentUser!.uid)
            .collection('travellers')
            .doc(carTravellerModel.carID);
        docRef.update({'photo': value});
      });
      _carTravellerModel = carTravellerModel;
      print('Pic uploaded successfully');
      clearTravellerField();
      notifyListeners();
    } catch (e) {
      print('image upload failed :$e');
    }
  }

  void clearTravellerField() {
    travellerBrandNameController.clear();
    travellerPriceController.clear();
    travellerPhotoController.clear();
    travellerContactController.clear();
    travellerNumberController.clear();
    travellerLocationController.clear();
    notifyListeners();
  }

  //--------------------AUTO---------------------------------------

  final autoAddKey = GlobalKey<FormState>();
  TextEditingController autoBrandNameController = TextEditingController();
  TextEditingController autoPriceController = TextEditingController();
  TextEditingController autoPhotoController = TextEditingController();
  TextEditingController autoContactController = TextEditingController();
  TextEditingController autoNumberController = TextEditingController();
  TextEditingController autoLocationController = TextEditingController();

  AutoModel? _autoModel;
  AutoModel get autoModel => _autoModel!;

  Future<void> saveAuto(String brandName, int price, String photo, int contact,
      String vehNumber, String locationName, String providerName) async {
    try {
      final data = firebaseFirestore
          .collection('providers')
          .doc(firebaseAuth.currentUser!.uid);
      final docs = data.collection('autos').doc();
      _autoModel = AutoModel(
          autoID: docs.id,
          brandName: brandName,
          price: price,
          photo: photo,
          contact: contact,
          vehNumber: vehNumber,
          locationName: locationName,
          providerName: providerName);

      docs.set(_autoModel!.toMap(docs.id));
      print('Successfully stored');
      notifyListeners();
    } catch (e) {
      print('Save auto failed : $e');
    }
  }

  uploadAutoPhoto(File autoPhoto, String autoName) async {
    try {
      await storeImagetoStorge(
              '${firebaseAuth.currentUser!.uid}/Cabs Pics/Autos/$autoName',
              autoPhoto)
          .then((value) async {
        autoModel.photo = value;

        DocumentReference docRef = firebaseFirestore
            .collection('providers')
            .doc(firebaseAuth.currentUser!.uid)
            .collection('autos')
            .doc(autoModel.autoID);
        docRef.update({'photo': value});
      });
      _autoModel = autoModel;
      print('Pic uploaded successfully');
      clearAutoField();
      notifyListeners();
    } catch (e) {
      print('image upload failed :$e');
    }
  }

  void clearAutoField() {
    autoBrandNameController.clear();
    autoPriceController.clear();
    autoPhotoController.clear();
    autoContactController.clear();
    autoNumberController.clear();
    autoLocationController.clear();
    notifyListeners();
  }

  //--------------------RENT VEHICLE---------------------------------------
  final rentVehicleAddKey = GlobalKey<FormState>();
  TextEditingController vehicleBrandNameController = TextEditingController();
  TextEditingController vehiclePriceController = TextEditingController();
  TextEditingController vehiclePhotoController = TextEditingController();
  TextEditingController vehicleContactController = TextEditingController();
  TextEditingController vehicleNumberController = TextEditingController();
  TextEditingController vehicleLocationController = TextEditingController();

  String? rentVehicles;

  changeRentVehicletype(value) {
    rentVehicles = value;
    notifyListeners();
  }

  RentVehicleModel? _rentVehicleModel;
  RentVehicleModel get rentVehicleModel => _rentVehicleModel!;

  Future<void> saveRentVehicle(
    String vehicleType,
    String brandName,
    int price,
    String photo,
    int contact,
    String vehNumber,
    String locationName,
  ) async {
    try {
      final data = firebaseFirestore
          .collection('providers')
          .doc(firebaseAuth.currentUser!.uid);
      final docs = data.collection('rent $vehicleType').doc();
      _rentVehicleModel = RentVehicleModel(
          vehicleID: docs.id,
          vehicleType: vehicleType,
          brandName: brandName,
          price: price,
          photo: photo,
          contact: contact,
          vehNumber: vehNumber,
          locationName: locationName);

      docs.set(_rentVehicleModel!.toMap(docs.id));
      print('Successfully stored');
      notifyListeners();
    } catch (e) {
      print('Save car failed : $e');
    }
  }

  uploadRentVehiclePhoto(File rentVehiclePhoto, String rentVehicleName) async {
    try {
      await storeImagetoStorge(
              '${firebaseAuth.currentUser!.uid}/Rent Vehicles/rent ${rentVehicleModel.vehicleType}/$rentVehicleName',
              rentVehiclePhoto)
          .then((value) async {
        rentVehicleModel.photo = value;

        DocumentReference docRef = firebaseFirestore
            .collection('providers')
            .doc(firebaseAuth.currentUser!.uid)
            .collection('rent ${rentVehicleModel.vehicleType}')
            .doc(rentVehicleModel.vehicleID);
        docRef.update({'photo': value});
      });
      _rentVehicleModel = rentVehicleModel;
      print('Pic uploaded successfully');
      clearRentVehicleField();
      notifyListeners();
    } catch (e) {
      print('image upload failed :$e');
    }
  }

  void clearRentVehicleField() {
    vehicleBrandNameController.clear();
    vehiclePriceController.clear();
    vehiclePhotoController.clear();
    vehicleContactController.clear();
    vehicleNumberController.clear();
    vehicleLocationController.clear();
    notifyListeners();
  }

  //--------------------WORKSHOP---------------------------------------

  final workshopAddKey = GlobalKey<FormState>();
  TextEditingController workshopNameController = TextEditingController();
  TextEditingController workshopPhotoController = TextEditingController();
  TextEditingController workshopContactController = TextEditingController();
  TextEditingController workshopLocationController = TextEditingController();

  String? workshops;

  changeWorkshoptype(value) {
    workshops = value;
    notifyListeners();
  }

  AutomobileWorkshopModel? _autoMobileWorkshopModel;
  AutomobileWorkshopModel get autoMobileWorkshopModel =>
      _autoMobileWorkshopModel!;

  Future<void> saveWorkshop(
    String workshopType,
    String workshopName,
    String photo,
    int contact,
    String location,
  ) async {
    try {
      final data = firebaseFirestore
          .collection('providers')
          .doc(firebaseAuth.currentUser!.uid);
      final docs = data.collection(workshopType).doc();
      _autoMobileWorkshopModel = AutomobileWorkshopModel(
          workshopID: docs.id,
          workshopType: workshopType,
          workshopName: workshopName,
          photo: photo,
          contact: contact,
          location: location);

      docs.set(_autoMobileWorkshopModel!.toMap(docs.id));
      print('Successfully stored');
      notifyListeners();
    } catch (e) {
      print('save workshop failed : $e');
    }
  }

  uploadWorkshopPhoto(File workshopPhoto, String workshopName) async {
    try {
      await storeImagetoStorge(
              '${firebaseAuth.currentUser!.uid}/Workshops/${autoMobileWorkshopModel.workshopType}/$workshopName',
              workshopPhoto)
          .then((value) async {
        autoMobileWorkshopModel.photo = value;

        DocumentReference docRef = firebaseFirestore
            .collection('providers')
            .doc(firebaseAuth.currentUser!.uid)
            .collection(autoMobileWorkshopModel.workshopType)
            .doc(autoMobileWorkshopModel.workshopID);
        docRef.update({'photo': value});
      });
      _autoMobileWorkshopModel = autoMobileWorkshopModel;
      print('Pic uploaded successfully');
      clearWorkshopField();
      notifyListeners();
    } catch (e) {
      print('image upload failed :$e');
    }
  }

  void clearWorkshopField() {
    workshopNameController.clear();
    workshopPhotoController.clear();
    workshopContactController.clear();
    workshopLocationController.clear();
    notifyListeners();
  }

  //--------------------ACCESSORIES---------------------------------------

  final wheelAddKey = GlobalKey<FormState>();
  TextEditingController wheelBrandNameController = TextEditingController();
  TextEditingController wheelPriceController = TextEditingController();
  TextEditingController wheelPhotoController = TextEditingController();
  TextEditingController wheelContactController = TextEditingController();
  TextEditingController wheelLocationController = TextEditingController();

  final helmetAddKey = GlobalKey<FormState>();
  TextEditingController helmetBrandNameController = TextEditingController();
  TextEditingController helmetPriceController = TextEditingController();
  TextEditingController helmetPhotoController = TextEditingController();
  TextEditingController helmetContactController = TextEditingController();
  TextEditingController helmetLocationController = TextEditingController();

  final lightAddKey = GlobalKey<FormState>();
  TextEditingController lightBrandNameController = TextEditingController();
  TextEditingController lightPriceController = TextEditingController();
  TextEditingController lightPhotoController = TextEditingController();
  TextEditingController lightContactController = TextEditingController();
  TextEditingController lightLocationController = TextEditingController();

  final bodyPartsAddKey = GlobalKey<FormState>();
  TextEditingController bodyPartsBrandNameController = TextEditingController();
  TextEditingController bodyPartsPriceController = TextEditingController();
  TextEditingController bodyPartsPhotoController = TextEditingController();
  TextEditingController bodyPartsContactController = TextEditingController();
  TextEditingController bodyPartsLocationController = TextEditingController();

  AccessoriesModel? _accessoriesModel;
  AccessoriesModel get accessoriesModel => _accessoriesModel!;

  Future<void> saveAccessories(
    String brandName,
    int price,
    String photo,
    int contact,
    String location,
    String collectionName,
  ) async {
    try {
      final data = firebaseFirestore
          .collection('providers')
          .doc(firebaseAuth.currentUser!.uid);
      final docs = data.collection(collectionName).doc();
      _accessoriesModel = AccessoriesModel(
        accessoriesID: docs.id,
        brandName: brandName,
        price: price,
        photo: photo,
        contact: contact,
        location: location,
      );

      docs.set(_accessoriesModel!.toMap(docs.id));
      print('Successfully stored');
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  uploadAccessoriesPhoto(
    File accessoryPhoto,
    String accessoryName,
    String accessoryType,
    String collectionName,
  ) async {
    try {
      await storeImagetoStorge(
              '${firebaseAuth.currentUser!.uid}/Accessories/$accessoryType/$accessoryName',
              accessoryPhoto)
          .then((value) async {
        accessoriesModel.photo = value;

        DocumentReference docRef = firebaseFirestore
            .collection('providers')
            .doc(firebaseAuth.currentUser!.uid)
            .collection(collectionName)
            .doc(accessoriesModel.accessoriesID);
        docRef.update({'photo': value});
      });
      _accessoriesModel = accessoriesModel;
      print('Pic uploaded successfully');
      clearWorkshopField();
      notifyListeners();
    } catch (e) {
      print('image upload failed :$e');
    }
  }
}
