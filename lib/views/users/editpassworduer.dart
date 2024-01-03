import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tripswipe/views/cabautorickshaw.dart';
import 'package:tripswipe/views/cabcar.dart';
import 'package:tripswipe/views/cabtravaller.dart';
import 'package:tripswipe/views/editpassword.dart';
import 'package:tripswipe/views/editprofile.dart';
import 'package:tripswipe/views/myservieses.dart';

class editpas extends StatefulWidget {
  const editpas({Key? key}) : super(key: key);

  @override
  State<editpas> createState() => _editpasState();
}

class _editpasState extends State<editpas> {
  File? _image;
  final picker = ImagePicker();
  Future ChoiceImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: HexColor("202020"),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            painter: HeaderCurvedContainer(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 78.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
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
                SizedBox(
                  height: 85,
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                    height: 50,
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Current password",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    )),
                SizedBox(
                  height: 24,
                ),
                Container(
                    height: 50,
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "New password",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    )),
                SizedBox(
                  height: 24,
                ),
                Container(
                    height: 50,
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Confirm your password",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    )),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 310,
                      decoration: BoxDecoration(
                          color: HexColor("E9BC1D"),
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
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
