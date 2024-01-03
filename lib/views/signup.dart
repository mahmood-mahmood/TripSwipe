import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final signUpController = Provider.of<Controller>(context);
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 310,
              width: double.infinity,
              decoration: BoxDecoration(
                color: HexColor("D8F3DC"),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("img/Login page (1).png")),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 125,
                    left: 90,
                    child: Image.asset(
                      "img/Group (5).png",
                      width: 174,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Form(
                key: signUpController.signupKey,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        elevation: 5,
                        color: HexColor("FFFFFF"),
                        child: Container(
                          color: HexColor("FFFFFF"),
                          height: 55,
                          width: width,
                          child: TextFormField(
                            controller:
                                signUpController.signUpUsernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*required field';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline_outlined,
                                color: Colors.grey[400],
                              ),
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.grey[400]),
                              hintText: r"Username",
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        elevation: 5,
                        color: HexColor("FFFFFF"),
                        child: Container(
                          color: HexColor("FFFFFF"),
                          height: 55,
                          width: width,
                          child: TextFormField(
                            controller: signUpController.signUpPhoneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*required field';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.call_outlined,
                                color: Colors.grey[400],
                              ),
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.grey[400]),
                              hintText: r"Phonenumber",
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        elevation: 5,
                        color: HexColor("FFFFFF"),
                        child: Container(
                          color: HexColor("FFFFFF"),
                          height: 55,
                          width: width,
                          child: TextFormField(
                            controller: signUpController.signUpEmailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*required field';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.grey[400],
                              ),
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.grey[400]),
                              hintText: r"Email",
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        elevation: 5,
                        color: HexColor("FFFFFF"),
                        child: Container(
                          color: HexColor("FFFFFF"),
                          height: 55,
                          width: width,
                          child: TextFormField(
                            controller: signUpController.signUpPassController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*required field';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.grey[400],
                              ),
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.grey[400]),
                              hintText: r"Password",
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        elevation: 5,
                        color: HexColor("FFFFFF"),
                        child: Container(
                          color: HexColor("FFFFFF"),
                          height: 55,
                          width: width,
                          child: TextFormField(
                            
                            controller:
                                signUpController.signUpPassConfrmController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*required field';
                              } else if (value !=
                                  signUpController.signUpPassController.text) {
                                return "Password did'nt match";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.grey[400],
                              ),
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.grey[400]),
                              hintText: r"Confirm Password",
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              if (signUpController.signupKey.currentState!
                                  .validate()) {}
                              signUpController.signupUser(
                                  signUpController
                                      .signUpUsernameController.text,
                                  signUpController.signUpEmailController.text.trim(),
                                  int.parse(signUpController
                                      .signUpPhoneController.text),
                                  signUpController.signUpPassController.text.trim(),
                                  'users',
                                  context);
                            },
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                alignment: Alignment.center,
                                height: 47,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor("AA80F9")),
                                child: Text(
                                  "USER",
                                  style: TextStyle(
                                      color: HexColor("FFFFFF"),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                              onTap: () {
                                if (signUpController.signupKey.currentState!
                                    .validate()) {}
                                signUpController.signupUser(
                                    signUpController
                                        .signUpUsernameController.text,
                                    signUpController.signUpEmailController.text,
                                    int.parse(signUpController
                                        .signUpPhoneController.text),
                                    signUpController.signUpPassController.text,
                                    'providers',
                                    context);
                              },
                              child: Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 47,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: HexColor("AA80F9")),
                                    child: Text(
                                      "PROVIDER",
                                      style: TextStyle(
                                          color: HexColor("FFFFFF"),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "By signing up you have agreed to our",
                          style: TextStyle(color: HexColor("1B4332")),
                        ),
                        Text(
                          "Terms of use Privacy Policy",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: HexColor("2D6A4F")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
