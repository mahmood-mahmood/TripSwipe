import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class editauto extends StatefulWidget {
  const editauto({Key? key}) : super(key: key);

  @override
  State<editauto> createState() => _editautoState();
}

class _editautoState extends State<editauto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "img/autorickshw-removebg-preview.png"))),
                      ),
                    )
                  ]),
            ),
            Positioned(
                top: 438,
                child: Container(
                  height: 200,
                  width: 360,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("img/mainebackground.png"))),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 282.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 364,
                    width: 364,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "DETAILS",
                            style: TextStyle(
                                fontSize: 15,
                                color: HexColor("9E9E9E"),
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black12)),
                                  hintText: "Brand name",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[400])),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black12)),
                                  hintText: "Price",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[400])),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black12)),
                                  hintText: "Photo",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[400])),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black12)),
                                  hintText: "Contact",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[400])),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  hintText: "Location",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[400])),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                    color: HexColor("1B4332"),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Text(
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
            Positioned(
              top: 5,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
            )
          ],
        ),
      ),
    );
  }
}
