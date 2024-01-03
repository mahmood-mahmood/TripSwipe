import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/cabbooking.dart';
import 'package:tripswipe/views/profile.dart';
import 'package:tripswipe/views/users/cabbookinguser.dart';
import 'package:tripswipe/views/users/locationselect.dart';
import 'package:tripswipe/views/users/testingpageexamples.dart';
import 'package:tripswipe/views/userrentelpages/userrentelpage.dart';
import 'package:tripswipe/views/userworkshop/userworkshop2.dart';

class workshoppage1 extends StatefulWidget {
  const workshoppage1({Key? key}) : super(key: key);

  @override
  State<workshoppage1> createState() => _workshoppage1State();
}

class _workshoppage1State extends State<workshoppage1> {
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
            Positioned(
              top: 105,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img/location_prev_ui.png"))),
                  ),
                  Text(
                    "Select Location",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    "Get easy access to wide ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "range of location with ease.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => workshoppage2(),
                            ));
                      },
                      child: Card(
                          color: HexColor("62C449"),
                          elevation: 10,
                          child: Container(
                            height: 45,
                            width: 110,
                            decoration: BoxDecoration(
                                color: HexColor("62C449"),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_right_alt_sharp,
                              color: Colors.white,
                              size: 25,
                            ),
                          )))
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: Text(
                  //     'Profile',
                  //     style: TextStyle(
                  //       fontSize: 35.0,
                  //       letterSpacing: 1.5,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.w600,
                  //
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 108.0),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width / 2,
                  //     height: MediaQuery.of(context).size.width / 2,
                  //     padding: const EdgeInsets.all(10.0),
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       color: Colors.white,
                  //       // image: DecorationImage(
                  //       //   image: AssetImage(null),
                  //       //   fit: BoxFit.cover,
                  //       // ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 498.0),
              child: Container(
                height: 300,
                width: 330,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("img/itslucky.png"))),
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
