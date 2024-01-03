import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/accessories/useraccessories.dart';
import 'package:tripswipe/views/users/cabbookpages.dart';
import 'package:tripswipe/views/userrentelpages/userrentelpage.dart';
import 'package:tripswipe/views/users/userprofile.dart';
import 'package:tripswipe/views/userworkshop/userworkshop1.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("202020"),
        body: Consumer<Controller>(builder: (context, userHomeController, _) {
          return FutureBuilder(
              future: userHomeController.fetchProvider('users'),
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
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
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(left: 298.0),
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const UserProf(),
                                                ));
                                          },
                                          child: const CircleAvatar(
                                            radius: 25,
                                            backgroundImage:
                                                AssetImage("img/pro.png"),
                                          )))
                                ],
                              ),
                            ),
                          ),
                          const Column(
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
                              // ),
                            ],
                          ),

                          // Padding(
                          //   padding: const EdgeInsets.only(top: 168.0),
                          //   child:SizedBox(height: 396,
                          //     child:   GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),children: [
                          //
                          //       Column(
                          //         children: [
                          //           InkWell(onTap: () {
                          //             Navigator.push(context, MaterialPageRoute(builder: (context) => pageview(),));
                          //           },child: Container(height: 100,width: 130,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/cab_booking-removebg-preview.png"))),)),
                          //           Text("Cab booking",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                          //           Text("For booking ",style: TextStyle(color: Colors.white),),
                          //           Text("taxi,traveller and auto",style: TextStyle(color: Colors.white)),
                          //         ],
                          //       ),
                          //
                          //       Column(
                          //         children: [
                          //           InkWell(onTap: () {
                          //             Navigator.push(context, MaterialPageRoute(builder: (context) => userrent(),));
                          //           },child: Container(height: 100,width: 138,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/car_rentservieses-removebg-preview.png"))),)),
                          //           Text("Rental service",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                          //           Text("For renting cars and",style: TextStyle(color: Colors.white)),
                          //           Text("motorcycles",style: TextStyle(color: Colors.white)),
                          //         ],
                          //       ),
                          //
                          //       Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Column(
                          //           children: [
                          //             InkWell(onTap: () {
                          //               Navigator.push(context, MaterialPageRoute(builder: (context) => workshoppage1(),));
                          //             },child: Container(height: 100,width: 130,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/isometric-auto-repair-horizontal-background-with-text-indoor-garage-composition-with-two-workers-repairing-car_1284-60836-removebg-preview.png"))),)),
                          //             Text("Workshops",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                          //             Text("Nearby workshops and ",style: TextStyle(color: Colors.white)),
                          //             Text("their details",style: TextStyle(color: Colors.white)),
                          //           ],
                          //         ),
                          //       ),
                          //
                          //       Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Column(
                          //           children: [
                          //             InkWell(onTap: () {
                          //               Navigator.push(context, MaterialPageRoute(builder: (context) => useracs()));
                          //             },child: Container(height: 100,width: 130,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/acs-removebg-preview.png"))),)),
                          //             Text("Accessories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                          //             Text("Nearby workshops and ",style: TextStyle(color: Colors.white)),
                          //             Text("their details",style: TextStyle(color: Colors.white)),
                          //           ],
                          //         ),
                          //       ),
                          //
                          //
                          //     ],),
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 498.0),
                            child: Container(
                              height: 300,
                              width: 350,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("img/itslucky.png"))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 168.0),
                            child: SizedBox(
                              height: 396,
                              child: GridView(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const pageview(),
                                                ));
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 130,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        "img/cab_booking-removebg-preview.png"))),
                                          )),
                                      const Text(
                                        "Cab booking",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white),
                                      ),
                                      const Text(
                                        "For booking ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const Text("taxi,traveller and auto",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const userrent(),
                                                ));
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 138,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        "img/car_rentservieses-removebg-preview.png"))),
                                          )),
                                      const Text(
                                        "Rental service",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white),
                                      ),
                                      const Text("For renting cars and",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const Text("motorcycles",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const workshoppage1(),
                                                  ));
                                            },
                                            child: Container(
                                              height: 100,
                                              width: 130,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "img/isometric-auto-repair-horizontal-background-with-text-indoor-garage-composition-with-two-workers-repairing-car_1284-60836-removebg-preview.png"))),
                                            )),
                                        const Text(
                                          "Workshops",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                        const Text("Nearby workshops and ",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        const Text("their details",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const UserAccessories()));
                                            },
                                            child: Container(
                                              height: 100,
                                              width: 130,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "img/acs-removebg-preview.png"))),
                                            )),
                                        const Text(
                                          "Accessories",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                        const Text("Nearby workshops and ",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        const Text("their details",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
              });
        }),
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
