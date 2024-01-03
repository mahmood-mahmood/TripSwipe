import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/cab_car_controller.dart';
import 'package:tripswipe/views/providermaine.dart';

class RentalPage extends StatelessWidget {
  const RentalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rentVehicleController = Provider.of<CabController>(context);

    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(
        backgroundColor: HexColor("D8F3DC"),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Column(children: [
              const Text(
                "Rent your vehicle",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          blurRadius: 4)
                    ]),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Rent your comfortable and customized",
                style: TextStyle(shadows: [
                  Shadow(
                      color: HexColor("808080"),
                      offset: const Offset(2, 2),
                      blurRadius: 4)
                ]),
              ),
              Text(
                "vehicle and submit the details of your",
                style: TextStyle(shadows: [
                  Shadow(
                      color: HexColor("808080"),
                      offset: const Offset(2, 2),
                      blurRadius: 4)
                ]),
              ),
              Text(
                "vehicle",
                style: TextStyle(shadows: [
                  Shadow(
                      color: HexColor("808080"),
                      offset: const Offset(2, 2),
                      blurRadius: 4)
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<CabController>(
                  builder: (context, rentVehicleController, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 55,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: 'car',
                            groupValue: rentVehicleController.rentVehicles,
                            onChanged: (value) {
                              rentVehicleController
                                  .changeRentVehicletype(value);
                            },
                          ),
                          Container(
                            height: 55,
                            width: 75,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "img/carrent-removebg-preview.png"))),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: 'bike',
                            groupValue: rentVehicleController.rentVehicles,
                            onChanged: (value) {
                              rentVehicleController
                                  .changeRentVehicletype(value);
                            },
                          ),
                          Container(
                            height: 59,
                            width: 75,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "img/bike-removebg-preview.png"))),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ]),
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
              padding: const EdgeInsets.only(top: 205.0),
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
                        key: rentVehicleController.rentVehicleAddKey,
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
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: TextFormField(
                                controller: rentVehicleController
                                    .vehicleBrandNameController,
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
                                            BorderSide(color: Colors.black12)),
                                    hintText: "Brand name",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400])),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: TextFormField(
                                controller: rentVehicleController
                                    .vehiclePriceController,
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
                                            BorderSide(color: Colors.black12)),
                                    hintText: "Price",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400])),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: TextFormField(
                                onTap: () {
                                  rentVehicleController.selectcabPic(
                                      context,
                                      rentVehicleController
                                          .vehiclePhotoController);
                                },
                                controller: rentVehicleController
                                    .vehiclePhotoController,
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
                                            BorderSide(color: Colors.black12)),
                                    hintText: "Photo",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400])),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: TextFormField(
                                controller: rentVehicleController
                                    .vehicleContactController,
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
                                            BorderSide(color: Colors.black12)),
                                    hintText: "Contact",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400])),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: TextFormField(
                                controller: rentVehicleController
                                    .vehicleNumberController,
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
                                            BorderSide(color: Colors.black12)),
                                    hintText: "Vehicle Number",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400])),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: TextFormField(
                                controller: rentVehicleController
                                    .vehicleLocationController,
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
                                  if (rentVehicleController
                                      .rentVehicleAddKey.currentState!
                                      .validate()) {
                                    if (rentVehicleController.rentVehicles ==
                                        null) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  'Please select your vehicle type')));
                                    } else {
                                      rentVehicleController
                                          .saveRentVehicle(
                                            rentVehicleController.rentVehicles!,
                                            rentVehicleController
                                                .vehicleBrandNameController
                                                .text,
                                            int.parse(rentVehicleController
                                                .vehiclePriceController.text),
                                            rentVehicleController
                                                .vehiclePhotoController.text,
                                            int.parse(rentVehicleController
                                                .vehicleContactController.text),
                                            rentVehicleController
                                                .vehicleNumberController.text,
                                            rentVehicleController
                                                .vehicleLocationController.text,
                                          )
                                          .then((value) => rentVehicleController
                                              .uploadRentVehiclePhoto(
                                                  rentVehicleController.cabPic!,
                                                  '${rentVehicleController.vehicleBrandNameController.text} ${rentVehicleController.vehicleNumberController.text}'))
                                          .whenComplete(() =>
                                              Navigator.of(context)
                                                  .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Promain(),
                                                      ),
                                                      (route) => false));
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
          ],
        ),
      ),
    );
  }
}
