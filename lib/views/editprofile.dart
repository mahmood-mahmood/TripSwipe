import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class editprofile extends StatefulWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
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
    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(
        backgroundColor: HexColor("D8F3DC"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("img/Edit cab.png"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Edit profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              _image == null
                  ? CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("img/pro.png"),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0, top: 65),
                        child: Stack(
                          children: [
                            InkWell(
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
                          ],
                        ),
                      ),
                    )
                  : Stack(
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
                                  border:
                                      Border.all(color: Colors.black, width: 3),
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
        ),
      ),
    );
  }
}
