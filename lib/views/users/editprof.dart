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

class editpro extends StatefulWidget {
  const editpro({Key? key}) : super(key: key);

  @override
  State<editpro> createState() => _editproState();
}

class _editproState extends State<editpro> {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 19,
                ),
                Text(
                  "Edit profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                _image == null
                    ? CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("img/pro.png"),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50.0, top: 55),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 28,
                                top: 10,
                                child: InkWell(
                                  onTap: () {
                                    ChoiceImage();
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                        color: Colors.grey[800],
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white54,
                                    ),

                                    // child: IconButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.black26) ,shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)))),color: Colors.grey,onPressed: () {
                                    //   ChoiceImage();
                                    // }, icon: Icon(Icons.add)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.cyan,
                              radius: 47,
                              child: ClipOval(
                                  child: Container(
                                      height: 95,
                                      width: 95,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(104)),
                                      child: Image.file(
                                        _image!,
                                        fit: BoxFit.cover,
                                      )))),
                          // #6228d7
                          // #f9ce34

                          Positioned(
                            top: 55,
                            left: 59,
                            child: InkWell(
                              onTap: () {
                                ChoiceImage();
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(35)),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white54,
                                ),

                                // child: IconButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.black26) ,shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)))),color: Colors.grey,onPressed: () {
                                //   ChoiceImage();
                                // }, icon: Icon(Icons.add)),
                              ),
                            ),
                          )
                        ],
                      ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 50,
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Full name",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 50,
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 50,
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone number",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 50,
                        width: 145,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Lattitude",
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.black,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                    Container(
                        height: 50,
                        width: 145,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Langitude",
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.black,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 458.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 50,
                      width: 310,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Address",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder()),
                      )),
                  SizedBox(
                    height: 15,
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
                          "SUBMIT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
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
