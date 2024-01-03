import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/cab_car_controller.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/providermaine.dart';

class CabCar extends StatelessWidget {
  const CabCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carAddController = Provider.of<CabController>(context);
    final userController = Provider.of<Controller>(context);
    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Consumer<CabController>(
                    builder: (context, carAddController, _) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Text(
                            "choose a type",
                            style: TextStyle(
                              color: HexColor("2D6A4F"),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Hatchback',
                              groupValue: carAddController.cars,
                              onChanged: (value) {
                                carAddController.changeCartype(value);
                              },
                            ),
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 60,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "img/hatchback-removebg-preview.png"))),
                                )),
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 60,
                                  width: 195,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          " Hatchback",
                                          style: TextStyle(
                                              color: HexColor("1B4332"),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          " Comfy,Economical cars",
                                          style: TextStyle(
                                              color: HexColor("888888")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Sedan',
                              groupValue: carAddController.cars,
                              onChanged: (value) {
                                carAddController.changeCartype(value);
                              },
                            ),
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 60,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "img/sedan-removebg-preview.png"))),
                                )),
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 60,
                                  width: 195,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          " Sedan",
                                          style: TextStyle(
                                              color: HexColor("1B4332"),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          " Spacious Sedan ,Top Drivers",
                                          style: TextStyle(
                                              color: HexColor("888888")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Suv',
                              groupValue: carAddController.cars,
                              onChanged: (value) {
                                carAddController.changeCartype(value);
                              },
                            ),
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 60,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "img/suv-removebg-preview.png"))),
                                )),
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 60,
                                  width: 195,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          " Suv",
                                          style: TextStyle(
                                              color: HexColor("1B4332"),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Luxury Compfort,more Space",
                                          style: TextStyle(
                                              color: HexColor("888888")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ]);
                }),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: 200,
                    width: 360,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img/mainebackground.png"))),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 282.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      // height: 364,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          key: carAddController.cabCarAddKey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "DETAILS",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: HexColor("9E9E9E"),
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: TextFormField(
                                  controller:
                                      carAddController.carBrandNameController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '*this field is required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black12)),
                                      hintText: "Brand name",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[400])),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: TextFormField(
                                  controller:
                                      carAddController.carPriceController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '*this field is required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black12)),
                                      hintText: "Price",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[400])),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: TextFormField(
                                  onTap: () {
                                    carAddController.selectcabPic(context,
                                        carAddController.carPhotoController);
                                  },
                                  controller:
                                      carAddController.carPhotoController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '*this field is required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black12)),
                                      hintText: "Photo",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[400])),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: TextFormField(
                                  controller:
                                      carAddController.carContactController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '*this field is required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black12)),
                                      hintText: "Contact",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[400])),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: TextFormField(
                                  controller:
                                      carAddController.carNumberController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '*this field is required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black12)),
                                      hintText: "Vehicle Number",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[400])),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: TextFormField(
                                  controller:
                                      carAddController.carLocationController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '*this field is required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      hintText: "Location",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[400])),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  onTap: () {
                                    if (carAddController
                                        .cabCarAddKey.currentState!
                                        .validate()) {
                                      if (carAddController.cars == null) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    'Please select your car type')));
                                      } else {
                                        carAddController
                                            .saveCar(
                                              carAddController.cars!,
                                              carAddController
                                                  .carBrandNameController.text,
                                              int.parse(carAddController
                                                  .carPriceController.text),
                                              carAddController
                                                  .carPhotoController.text,
                                              int.parse(carAddController
                                                  .carContactController.text),
                                              carAddController
                                                  .carNumberController.text,
                                              carAddController
                                                  .carLocationController.text,
                                              'cars',
                                              userController.userModel.userName,
                                            )
                                            .then((value) =>
                                                carAddController.uploadCabPhoto(
                                                    carAddController.cabPic!,
                                                    '${carAddController.carBrandNameController.text} ${carAddController.carNumberController.text}'))
                                            .whenComplete(() =>
                                                Navigator.of(context)
                                                    .pushAndRemoveUntil(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Promain(),
                                                        ),
                                                        (route) => false));
                                        print(carAddController
                                            .carTravellerModel.carID);
                                      }
                                    }
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 315,
                                    decoration: BoxDecoration(
                                        color: HexColor("1B4332"),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: const Text(
                                      "SUBMIT",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
