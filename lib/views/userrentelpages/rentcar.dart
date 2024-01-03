import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/userrentelpages/hatchbackrents.dart';
import 'package:tripswipe/views/userrentelpages/primsuvrent.dart';
import 'package:tripswipe/views/userrentelpages/sedanrents.dart';

class rentcar extends StatefulWidget {
  const rentcar({Key? key}) : super(key: key);

  @override
  State<rentcar> createState() => _rentcarState();
}

class _rentcarState extends State<rentcar> {
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
            const Positioned(
              top: 195,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
            ),
            Padding(
                padding: const EdgeInsets.only(top: 130.0, left: 30, right: 15),
                child: Card(
                    elevation: 10,
                    child: Container(
                      alignment: Alignment.center,
                      height: 310,
                      width: 295,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "choose a type  ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: HexColor("#2D6A4F")),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),

                            //second

                            Row(
                              children: [
                                Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      height: 60,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "img/primehatchbackx-removebg-preview.png"))),
                                    )),
                                Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => hatchbackdriv(),));
                                      },
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const RentCar(),
                                              ));
                                        },
                                        child: Container(
                                          height: 60,
                                          width: 195,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  " Prime Hatchback",
                                                  style: TextStyle(
                                                      color: HexColor("1B4332"),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  " Comfy,Economical cars",
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("888888")),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),

                            //third

                            Row(
                              children: [
                                Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      height: 60,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "img/primesedan-removebg-preview.png"))),
                                    )),
                                Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const sedanrent(),
                                            ));
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 195,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                " Prime Sedan",
                                                style: TextStyle(
                                                    color: HexColor("1B4332"),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                " Spacious Sedan ,Top Drivers",
                                                style: TextStyle(
                                                    color: HexColor("888888")),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),

                            //four

                            Row(
                              children: [
                                Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      height: 60,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "img/primsuv-removebg-preview.png"))),
                                    )),
                                Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const suvrent(),
                                            ));
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 195,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                " Prime SUV",
                                                style: TextStyle(
                                                    color: HexColor("1B4332"),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                " Luxury Compfort,moreSpace",
                                                style: TextStyle(
                                                    color: HexColor("888888")),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),

                            Card(
                                elevation: 5,
                                child: InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => pageview(),
                                      //     ));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 48,
                                      width: 269,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black26, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: HexColor("E9BC1D")),
                                      child: const Text(
                                        "Book Now",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                    ))),
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
