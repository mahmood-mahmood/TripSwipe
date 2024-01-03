import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class editpassword extends StatefulWidget {
  const editpassword({Key? key}) : super(key: key);

  @override
  State<editpassword> createState() => _editpasswordState();
}

class _editpasswordState extends State<editpassword> {
  //
  // File? _image;
  // final picker=ImagePicker();
  // Future ChoiceImage()async{
  //   final pickedImage=await picker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image=File(pickedImage!.path);
  //   });
  // }

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
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock_outline),
                      Text(
                        "Edit password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  // _image==null?
                  // CircleAvatar(radius: 55,backgroundImage: AssetImage("img/pro.png"),child: Padding(
                  //   padding: const EdgeInsets.only(left: 80.0,top: 65),
                  //   child: Stack(
                  //     children: [
                  //       IconButton(onPressed: () {
                  //         ChoiceImage();
                  //       }, icon: Icon(Icons.add_box)),
                  //     ],
                  //   ),
                  //
                  // ),) :Stack(
                  //   children: [
                  //     CircleAvatar(backgroundColor:Colors.cyan,radius: 47, child: ClipOval(child: Container(height: 95,width: 95,decoration: BoxDecoration(borderRadius: BorderRadius.circular(104)),child: Image.file(_image!,fit: BoxFit.cover,)))),
                  //     // #6228d7
                  //     // #f9ce34
                  //
                  //     Positioned(top: 45,left: 49,
                  //       child: IconButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black26)),onPressed: () {
                  //         ChoiceImage();
                  //       }, icon: Icon(Icons.add_box,color: Colors.blue,)),
                  //     )
                  //
                  //   ],
                  // ),SizedBox(height: 15,),
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
                          "SUBMIT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ))
                ],
              ),
            ),
            Positioned(
                top: 358,
                child: Container(
                  height: 200,
                  width: 360,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("img/mainebackground.png"))),
                ))
          ],
        ),
      ),
    );
  }
}
