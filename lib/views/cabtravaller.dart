import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/cab_car_controller.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/providermaine.dart';

class Travaller extends StatefulWidget {
  const Travaller({Key? key}) : super(key: key);

  @override
  State<Travaller> createState() => _TravallerState();
}

class _TravallerState extends State<Travaller> {
  @override
  Widget build(BuildContext context) {
    final travellerAddController = Provider.of<CabController>(context);
    final userController = Provider.of<Controller>(context);
    // var travellers;
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
                    builder: (context, travellerAddController, _) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 55,
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
                          height: 10,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Traveller',
                              groupValue: travellerAddController.traveller,
                              onChanged: (value) {
                                travellerAddController
                                    .changeTravellertype(value);
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
                                              "img/travaller-removebg-preview (1).png"))),
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
                                          "Traveller",
                                          style: TextStyle(
                                              color: HexColor("1B4332"),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Comfy,Economical traveller",
                                          style: TextStyle(
                                              color: HexColor("888888")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Tourist bus',
                              groupValue: travellerAddController.traveller,
                              onChanged: (value) {
                                travellerAddController
                                    .changeTravellertype(value);
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
                                              "img/travaller-removebg-preview.png"))),
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
                                          "Tourist bus",
                                          style: TextStyle(
                                              color: HexColor("1B4332"),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Luxury Comfort,more Space",
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
                          key: travellerAddController.travellerAddKey,
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
                                  controller: travellerAddController
                                      .travellerBrandNameController,
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
                                  controller: travellerAddController
                                      .travellerPriceController,
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
                                    travellerAddController.selectcabPic(
                                        context,
                                        travellerAddController
                                            .travellerPhotoController);
                                  },
                                  controller: travellerAddController
                                      .travellerPhotoController,
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
                                  controller: travellerAddController
                                      .travellerContactController,
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
                                  controller: travellerAddController
                                      .travellerNumberController,
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
                                  controller: travellerAddController
                                      .travellerLocationController,
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
                                    if (travellerAddController
                                        .travellerAddKey.currentState!
                                        .validate()) {
                                      if (travellerAddController.traveller ==
                                          null) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    'Please select your traveller type')));
                                      } else {
                                        travellerAddController
                                            .saveCar(
                                                travellerAddController
                                                    .traveller!,
                                                travellerAddController
                                                    .travellerBrandNameController
                                                    .text,
                                                int.parse(travellerAddController
                                                    .travellerPriceController
                                                    .text),
                                                travellerAddController
                                                    .travellerPhotoController
                                                    .text,
                                                int.parse(travellerAddController
                                                    .travellerContactController
                                                    .text),
                                                travellerAddController
                                                    .travellerNumberController
                                                    .text,
                                                travellerAddController
                                                    .travellerLocationController
                                                    .text,
                                                'travellers',
                                                userController
                                                    .userModel.userName)
                                            .then(
                                              (value) => travellerAddController
                                                  .uploadTravellerPhoto(
                                                      travellerAddController
                                                          .cabPic!,
                                                      '${travellerAddController.travellerBrandNameController.text} ${travellerAddController.travellerNumberController.text}'),
                                            )
                                            .whenComplete(() =>
                                                Navigator.of(context)
                                                    .pushAndRemoveUntil(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Promain(),
                                                        ),
                                                        (route) => false));
                                        // print(travellerAddController.travellerModel.travellerID);
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
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
