import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/cab_car_controller.dart';

import 'providermaine.dart';

class Autoworkshop extends StatefulWidget {
  const Autoworkshop({Key? key}) : super(key: key);

  @override
  State<Autoworkshop> createState() => _AutoworkshopState();
}

class _AutoworkshopState extends State<Autoworkshop> {
  @override
  Widget build(BuildContext context) {
    final workshopController = Provider.of<CabController>(context);
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
                "Automobile workshop",
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
                height: 10,
              ),
              Text(
                "Get easy customers on your",
                style: TextStyle(color: HexColor("808080")),
              ),
              Text(
                "range of location.",
                style: TextStyle(color: HexColor("808080")),
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<CabController>(
                  builder: (context, workshopAddController, _) {
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
                            value: 'Car Workshop',
                            groupValue: workshopAddController.workshops,
                            onChanged: (value) {
                              workshopAddController.changeWorkshoptype(value);
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
                            value: 'Bike Workshop',
                            groupValue: workshopAddController.workshops,
                            onChanged: (value) {
                              workshopAddController.changeWorkshoptype(value);
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
              padding: const EdgeInsets.only(top: 185.0),
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
                        key: workshopController.workshopAddKey,
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
                                controller:
                                    workshopController.workshopNameController,
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
                                    hintText: "Shop name",
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
                                  workshopController.selectcabPic(
                                      context,
                                      workshopController
                                          .workshopPhotoController);
                                },
                                controller:
                                    workshopController.workshopPhotoController,
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
                                controller: workshopController
                                    .workshopContactController,
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
                                controller: workshopController
                                    .workshopLocationController,
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
                                  if (workshopController
                                      .workshopAddKey.currentState!
                                      .validate()) {
                                    if (workshopController.workshops == null) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  'Please select workshop type')));
                                    } else {
                                      workshopController
                                          .saveWorkshop(
                                              workshopController.workshops!,
                                              workshopController
                                                  .workshopNameController.text,
                                              workshopController
                                                  .workshopPhotoController.text,
                                              int.parse(workshopController
                                                  .workshopContactController
                                                  .text),
                                              workshopController
                                                  .workshopLocationController
                                                  .text)
                                          .then(
                                            (value) => workshopController
                                                .uploadWorkshopPhoto(
                                              workshopController.cabPic!,
                                              '${workshopController.workshopNameController.text} ${workshopController.workshopLocationController.text}',
                                            ),
                                          )
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
