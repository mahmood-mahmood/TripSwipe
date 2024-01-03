import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class otp2 extends StatefulWidget {
  const otp2({Key? key}) : super(key: key);

  @override
  State<otp2> createState() => _otp2State();
}

class _otp2State extends State<otp2> {
  var ischeck = false;
  var pass = false;
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 310,
                width: double.infinity,
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
                          "img/Rating (1).png",
                          width: 246,
                        ))
                  ],
                ),
                // Stack(children: [
                //   Padding(
                //       padding: const EdgeInsets.only(top: 38.0),
                //       child: Positioned(top: 10,child: Image.asset("",width: 500,)),
                //   )
                // ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 0.0),
                      child: Text(
                        r"OTP Verification",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20.0),
                    //   child: Card(elevation: 5,color: HexColor("FFFFFF"),
                    //     child: Container(color: HexColor("FFFFFF"),height: 55,width: 280,child: TextField(obscureText:!pass ,decoration: InputDecoration(suffixIcon: IconButton(onPressed: () {
                    //       setState(() {
                    //         pass=!pass;
                    //       });
                    //     }, icon: Icon(pass?Icons.visibility:Icons.visibility_off)),hintStyle: TextStyle(fontSize: 15,color: Colors.grey[400]),hintText:r"Enter your Password",enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))))),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 12.0),
                    //   child: Row(
                    //     children: [
                    //       Checkbox(value: ischeck, onChanged: (value) {
                    //         setState(() {
                    //           ischeck=value!;
                    //         });
                    //       },),
                    //
                    //       Text("Rememebr me"),
                    //
                    //       SizedBox(width: 30,),
                    //       Text("Forgot Password?")
                    //     ],
                    //   ),
                    // ),

                    // Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    //
                    //   InkWell(onTap: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: (context) => userhome(),));
                    //
                    //   },child: Card(elevation: 8,shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20)),child: Container(alignment: Alignment.center,height: 47,width: 110,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("AA80F9")),child: Text("USER",style: TextStyle(color: HexColor("FFFFFF"),fontWeight: FontWeight.bold),),))),
                    //   SizedBox(width: 20,),
                    //   InkWell(onTap: () {
                    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => promain(),));
                    //   },child: Card(elevation: 8,shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20)),child: Container(alignment: Alignment.center,height: 47,width: 110,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("AA80F9")),child: Text("PROVIDER",style: TextStyle(color: HexColor("FFFFFF"),fontWeight: FontWeight.bold),),))),
                    //   SizedBox(width: 20,),
                    //
                    // ],),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 0.0),
                      child: Text(
                        "We Will send you a one time password on",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " this",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Mobile Number",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "+91 - 0000000000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 40, // Set the desired height
                            width: 40, // Set the desired width
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            )),
                        Container(
                            alignment: Alignment.center,
                            height: 40, // Set the desired height
                            width: 40, // Set the desired width
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            )),
                        Container(
                            alignment: Alignment.center,
                            height: 40, // Set the desired height
                            width: 40, // Set the desired width
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            )),
                        Container(
                            alignment: Alignment.center,
                            height: 40, // Set the desired height
                            width: 40, // Set the desired width
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F49517")),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 285,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: HexColor("#F8A435")),
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont get Code ?"),
                        Text(
                          "Try Again",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
