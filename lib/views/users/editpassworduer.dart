import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/cabautorickshaw.dart';
import 'package:tripswipe/views/cabcar.dart';
import 'package:tripswipe/views/cabtravaller.dart';
import 'package:tripswipe/views/editpassword.dart';
import 'package:tripswipe/views/editprofile.dart';
import 'package:tripswipe/views/myservieses.dart';

class EditPass extends StatelessWidget {
  const EditPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final changePassController =
        Provider.of<Controller>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: HexColor("202020"),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            painter: HeaderCurvedContainer(),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 78.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline),
                    Text(
                      "Edit password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white54),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 85,
                ),
                const SizedBox(
                  height: 19,
                ),
                // const SizedBox(
                //     height: 50,
                //     width: 310,
                //     child: TextField(
                //       decoration: InputDecoration(
                //           hintText: "Current password",
                //           hintStyle: TextStyle(color: Colors.grey),
                //           filled: true,
                //           fillColor: Colors.black,
                //           enabledBorder: OutlineInputBorder(),
                //           focusedBorder: OutlineInputBorder()),
                //     )),
                // const SizedBox(
                //   height: 24,
                // ),
                // const SizedBox(
                //     height: 50,
                //     width: 310,
                //     child: TextField(
                //       decoration: InputDecoration(
                //           hintText: "New password",
                //           hintStyle: TextStyle(color: Colors.grey),
                //           filled: true,
                //           fillColor: Colors.black,
                //           enabledBorder: OutlineInputBorder(),
                //           focusedBorder: OutlineInputBorder()),
                //     )),
                // const SizedBox(
                //   height: 24,
                // ),
                SizedBox(
                    height: 50,
                    width: 310,
                    child: TextFormField(
                      controller: changePassController.passwordResetController,
                      decoration: const InputDecoration(
                          hintText: "Enter your Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    )),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                    onTap: () {
                      changePassController.passwordReset(
                          changePassController.passwordResetController.text,
                          context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 310,
                      decoration: BoxDecoration(
                          color: HexColor("E9BC1D"),
                          borderRadius: BorderRadius.circular(6)),
                      child: const Text(
                        "CONFIRM",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

// CustomPainter class to for the header curved-container
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = HexColor("#4D5151");
    Path path = Path()
      ..relativeLineTo(0, 120)
      ..quadraticBezierTo(size.width / 2, 200.0, size.width, 120)
      ..relativeLineTo(0, -120)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
