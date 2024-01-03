import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/userrentelpages/rentlist.dart';
import 'package:tripswipe/views/users/driverlist.dart';

class RentCar extends StatefulWidget {
  const RentCar({Key? key}) : super(key: key);

  @override
  State<RentCar> createState() => _RentCarState();
}

class _RentCarState extends State<RentCar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
            Consumer<Controller>(builder: (context, rentCarController, _) {
              return FutureBuilder(
                  future: rentCarController.fetchRentVehicles('rent car'),
                  builder: (context, snapshot) {
                    return snapshot.connectionState == ConnectionState.waiting
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : rentCarController.rentVehicleList.isEmpty
                            ? const Center(
                                child: Text('No Cars Found'),
                              )
                            : ListView.builder(
                                itemCount:
                                    rentCarController.rentVehicleList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 20, right: 15),
                                      child: Card(
                                          elevation: 10,
                                          child: InkWell(
                                            onTap: () {
                                              // Navigator.push(context, MaterialPageRoute(builder: (context) => driverconform(img:drivers[index]['img'],name:drivers[index]['name'],rat:drivers[index]['rat'],type:drivers[index]['type'],carnam:drivers[index]['carnam'],numplate:drivers[index]['numplate'],req: drivers[index]['req']),));
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 175,
                                              width: 310,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 5.0,
                                                ),
                                                child: Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 10.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            8.0),
                                                                child: Text(
                                                                  rentCarController
                                                                      .rentVehicleList[
                                                                          index]
                                                                      .brandName,
                                                                  style: TextStyle(
                                                                      color: HexColor(
                                                                          "#2D6A4F"),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          17,
                                                                      shadows: const [
                                                                        Shadow(
                                                                          offset: Offset(
                                                                              2,
                                                                              2),
                                                                          color:
                                                                              Colors.grey,
                                                                          blurRadius:
                                                                              3,
                                                                        )
                                                                      ]),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  drivers[index]
                                                                      ['rat'],
                                                                  const Text(
                                                                    "Rating",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 85,
                                                        ),
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.black,
                                                          radius: 25,
                                                          backgroundImage:
                                                              NetworkImage(
                                                                  rentCarController
                                                                      .rentVehicleList[
                                                                          index]
                                                                      .photo),
                                                        )
                                                      ],
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.0, right: 8),
                                                      child: Divider(
                                                        thickness: 0.6,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 14.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  '₹${rentCarController.rentVehicleList[index].price}/day',
                                                                  style: TextStyle(
                                                                      color: HexColor(
                                                                          "#2D6A4F"),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14)),
                                                              Text(
                                                                rentCarController
                                                                    .rentVehicleList[
                                                                        index]
                                                                    .locationName,
                                                                style: TextStyle(
                                                                    color: HexColor(
                                                                        "#2D6A4F"),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              // Text(
                                                              //   hatch[index]
                                                              //       ['in'],
                                                              //   style: TextStyle(
                                                              //       color: HexColor(
                                                              //           "#2D6A4F"),
                                                              //       fontWeight:
                                                              //           FontWeight
                                                              //               .bold),
                                                              // ),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 55,
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                'Request Pending',
                                                                style: TextStyle(
                                                                    color: HexColor(
                                                                        "#2D6A4F"),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              IconButton(
                                                                  style:
                                                                      ButtonStyle(
                                                                    backgroundColor:
                                                                        MaterialStatePropertyAll(
                                                                            HexColor("#1B4332")),
                                                                    shape:
                                                                        MaterialStatePropertyAll(
                                                                      RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    rentCarController.callingFunction(rentCarController
                                                                        .rentVehicleList[
                                                                            index]
                                                                        .contact
                                                                        .toString());
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons.call,
                                                                    color: Colors
                                                                        .white,
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
//
                                              ),
                                            ),
                                          )));
                                },
                              );
                  });
            }),
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
