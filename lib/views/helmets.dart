import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/views/providermaine.dart';

import '../controller/cab_car_controller.dart';

class Helmets extends StatelessWidget {
  const Helmets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helmetAddController = Provider.of<CabController>(context);
    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 33,
                        ),
                        Padding(
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
                                  key: helmetAddController.helmetAddKey,
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
                                          controller: helmetAddController
                                              .helmetBrandNameController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return '*this field is required';
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                              border:
                                                  const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.black12)),
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
                                          controller: helmetAddController
                                              .helmetPriceController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return '*this field is required';
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                              border:
                                                  const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.black12)),
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
                                            helmetAddController.selectcabPic(
                                                context,
                                                helmetAddController
                                                    .helmetPhotoController);
                                          },
                                          controller: helmetAddController
                                              .helmetPhotoController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return '*this field is required';
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                              border:
                                                  const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.black12)),
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
                                          controller: helmetAddController
                                              .helmetContactController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return '*this field is required';
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                              border:
                                                  const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.black12)),
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
                                          controller: helmetAddController
                                              .helmetLocationController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return '*this field is required';
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                              border:
                                                  const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.grey)),
                                              hintText: "Location",
                                              hintStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey[400])),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
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
                  padding:
                      const EdgeInsets.only(top: 500.0, right: 10, left: 10),
                  child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 200,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "HIGHLIGHTS",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: HexColor("9E9E9E"),
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 110,
                            ),
                            InkWell(
                                onTap: () {
                                  if (helmetAddController
                                      .helmetAddKey.currentState!
                                      .validate()) {
                                    helmetAddController
                                        .saveAccessories(
                                            helmetAddController
                                                .helmetBrandNameController.text,
                                            int.parse(helmetAddController
                                                .helmetPriceController.text),
                                            helmetAddController
                                                .helmetPhotoController.text,
                                            int.parse(helmetAddController
                                                .helmetContactController.text),
                                            helmetAddController
                                                .helmetLocationController.text,
                                            'helmets')
                                        .then(
                                          (value) => helmetAddController
                                              .uploadAccessoriesPhoto(
                                            helmetAddController.cabPic!,
                                            helmetAddController
                                                .helmetBrandNameController.text,
                                            'Helmets',
                                            'helmets',
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
                      )),
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
      ),
    );
  }
}
