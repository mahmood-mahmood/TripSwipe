import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/providermaine.dart';
import 'package:tripswipe/views/signup.dart';
import 'package:tripswipe/views/users/usershomepage.dart';

import 'otpverification.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var ischeck = false;
  var pass = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final loginController = Provider.of<Controller>(context, listen: false);
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 310,
                width: width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("img/Login page (1).png")),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(55),
                        bottomRight: Radius.circular(55))),
                child: Stack(
                  children: [
                    Positioned(
                        top: 125,
                        left: 90,
                        child: Image.asset(
                          "img/Group (5).png",
                          width: 174,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: loginController.loginKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            r"Email\Phone number",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                          elevation: 5,
                          color: HexColor("FFFFFF"),
                          child: Container(
                              color: HexColor("FFFFFF"),
                              height: 55,
                              width: width,
                              child: TextFormField(
                                  controller:
                                      loginController.loginEmailController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '*required field';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[400]),
                                      hintText: r"Enter your  Email\Phone",
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey)))))),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            r"Password",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 5,
                        color: HexColor("FFFFFF"),
                        child: Container(
                            color: HexColor("FFFFFF"),
                            height: 55,
                            width: width,
                            child: TextFormField(
                                controller:
                                    loginController.loginpasswordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '*required field';
                                  } else {
                                    return null;
                                  }
                                },
                                obscureText: !pass,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            pass = !pass;
                                          });
                                        },
                                        icon: Icon(pass
                                            ? Icons.visibility
                                            : Icons.visibility_off)),
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey[400]),
                                    hintText: r"Enter your Password",
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey))))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: ischeck,
                                onChanged: (value) {
                                  setState(() {
                                    ischeck = value!;
                                  });
                                },
                              ),
                              const Text("Rememebr me"),
                            ],
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const otp1(),
                                    ));
                              },
                              child: const Text("Forgot Password?"))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loginController.loginKey.currentState!
                                  .validate()) {
                                loginController.userLogin(
                                    loginController.loginEmailController.text.trim(),
                                    loginController
                                        .loginpasswordController.text.trim(),
                                    context,
                                    'users',
                                    const UserHome());
                              }
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const userhome(),
                              //     ));
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
                          InkWell(
                            onTap: () {
                              if (loginController.loginKey.currentState!
                                  .validate()) {
                                loginController.userLogin(
                                    loginController.loginEmailController.text.trim(),
                                    loginController
                                        .loginpasswordController.text.trim(),
                                    context,
                                    'providers',
                                    const Promain());
                              }
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const promain(),
                              //     ));
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’y have an Account ?",
                            style: TextStyle(color: HexColor("7D7D7D")),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Signup(),
                                    ));
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    color: HexColor("000000"),
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
