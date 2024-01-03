import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/userrentelpages/bikerent.dart';
import 'package:tripswipe/views/userrentelpages/hatchbackrents.dart';
import 'package:tripswipe/views/userrentelpages/rentcar.dart';
import 'package:tripswipe/views/userrentelpages/scooter.dart';

class RentCarBike extends StatefulWidget {
  const RentCarBike({Key? key}) : super(key: key);

  @override
  State<RentCarBike> createState() => _RentCarBikeState();
}

class _RentCarBikeState extends State<RentCarBike> {
  @override
  Widget build(BuildContext context) {
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
            Positioned(
              top: 195,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(height: 250,width: 250,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.contain,image: AssetImage("img/rentpageimagemain-removebg-preview.png"))),),
                  const Text(
                    "Choose your Ride",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Book your ride and enjoy always ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    "available and safe ride with loved ones",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

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
                  // )
                  //
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RentCar(),
                                ));
                          },
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "img/red-sports-car-isolated-white-vector_53876-67349-removebg-preview.png"))),
                          )),
                      const SizedBox(
                        width: 25,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RentBike(),
                                ));
                          },
                          child: Container(
                            height: 200,
                            width: 125,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "img/bikeride-removebg-preview.png"))),
                          )),
                      const SizedBox(
                        width: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 498.0),
              child: Container(
                height: 300,
                width: 330,
                decoration: const BoxDecoration(
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
