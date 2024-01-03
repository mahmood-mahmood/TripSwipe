import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/cab_car_controller.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/providermaine.dart';

class CabAuto extends StatelessWidget {
  const CabAuto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final autoAddController = Provider.of<CabController>(context);
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 55,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Container(
                          height: 200,
                          width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "img/autorickshw-removebg-preview.png"))),
                        ),
                      )
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
                          key: autoAddController.autoAddKey,
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
                                      autoAddController.autoBrandNameController,
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
                                      autoAddController.autoPriceController,
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
                                    autoAddController.selectcabPic(context,
                                        autoAddController.autoPhotoController);
                                  },
                                  controller:
                                      autoAddController.autoPhotoController,
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
                                      autoAddController.autoContactController,
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
                                      autoAddController.autoNumberController,
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
                                      autoAddController.autoLocationController,
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
                                    if (autoAddController
                                        .autoAddKey.currentState!
                                        .validate()) {
                                      autoAddController
                                          .saveAuto(
                                            autoAddController
                                                .autoBrandNameController.text,
                                            int.parse(autoAddController
                                                .autoPriceController.text),
                                            autoAddController
                                                .autoPhotoController.text,
                                            int.parse(autoAddController
                                                .autoContactController.text),
                                            autoAddController
                                                .autoNumberController.text,
                                            autoAddController
                                                .autoLocationController.text,
                                            userController.userModel.userName,
                                          )
                                          .then(
                                            (value) => autoAddController
                                                .uploadAutoPhoto(
                                                    autoAddController.cabPic!,
                                                    '${autoAddController.autoBrandNameController.text} ${autoAddController.autoNumberController.text}'),
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
