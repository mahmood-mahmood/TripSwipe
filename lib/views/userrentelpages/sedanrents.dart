import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/userrentelpages/rentlist.dart';
import 'package:tripswipe/views/users/driverlist.dart';

class sedanrent extends StatefulWidget {
  const sedanrent({Key? key}) : super(key: key);

  @override
  State<sedanrent> createState() => _hatchrentState();
}

class _hatchrentState extends State<sedanrent> {
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
            const Positioned(
              top: 205,
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
              padding: const EdgeInsets.only(top: 48.0),
              child: Expanded(
                child: ListView.builder(
                  itemCount: hatch.length,
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
                                    borderRadius: BorderRadius.circular(10),
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
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  hatch[index]['name'],
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("#2D6A4F"),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 17,
                                                      shadows: const [
                                                        Shadow(
                                                          offset: Offset(2, 2),
                                                          color: Colors.grey,
                                                          blurRadius: 3,
                                                        )
                                                      ]),
                                                ),
                                                Row(
                                                  children: [
                                                    drivers[index]['rat'],
                                                    const Text(
                                                      "Rating",
                                                      style: TextStyle(
                                                          fontSize: 12),
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
                                            backgroundColor: Colors.black,
                                            radius: 25,
                                            backgroundImage: hatch[index]
                                                ['img'],
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
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(hatch[index]['rat'],
                                                    style: TextStyle(
                                                        color:
                                                            HexColor("#2D6A4F"),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14)),
                                                Text(
                                                  hatch[index]['at'],
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("#2D6A4F"),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  hatch[index]['in'],
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("#2D6A4F"),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 55,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                hatch[index]['req'],
                                                style: TextStyle(
                                                    color: HexColor("#2D6A4F"),
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              IconButton(
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              HexColor(
                                                                  "#1B4332")),
                                                      shape: MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25)))),
                                                  onPressed: () {
//
//
//
                                                  },
                                                  icon: const Icon(
                                                    Icons.call,
                                                    color: Colors.white,
                                                  )),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
//                           child: Column(
//                           children: [
//
// Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
//   children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0),
//             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//
//       children: [SizedBox(height: 10,),
//
//                           Text(drivers[index]['name'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,shadows: [Shadow(offset: Offset(2, 2),color: Colors.grey,blurRadius: 3,)]),),
// SizedBox(height: 5,),
//             Padding(
//                       padding: const EdgeInsets.only(left: 2.0),
//                       child: Row(
//
//                           mainAxisSize:MainAxisSize.min ,
//                           children: [
//                             Text(drivers[index]['rat'],style: TextStyle(fontWeight: FontWeight.bold),),
// Text("Rating"),
//                           ],
//                       ),
//             ),
//
//       ],
//
//     ),
//           ),
//
// Padding(
//   padding: const EdgeInsets.only(right:8.0,top: 5),
//   child:   CircleAvatar(radius: 25,backgroundImage:drivers[index]['img'],),
// ),
//
//
//   ],
// ),
//
//
//     //second
//
//
//                             // 'name':'Starbi',
//                             // 'rat':'4.3',
//                             // 'type':"Hatchback",
//                             // 'carnam':"ALTO 800",
//                             // 'numplate':"KL-53T-1889",
//                             // 'req':"Request Pending",
//                             //
//
//
//     //four
//                             SizedBox(height: 15,),
//
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0,right: 10),
//                               child: Divider(thickness: 0.6,color: Colors.grey,),
//                             ),
//                             SizedBox(height: 10,),
//
//
//                             Row(
//                               children: [
//                                 Column(crossAxisAlignment: CrossAxisAlignment.start,
//
//                                   children: [
//
//                                     Row(
//
// // mainAxisAlignment: MainAxisAlignment.spaceEvenly                                      ,
//                                       children: [
//                                         Text("Car Type:",style: TextStyle(color: HexColor("#090808")),),
//                                         Text(drivers[index]['type'],style: TextStyle(color: HexColor("#2D6A4F"),fontWeight: FontWeight.bold,fontSize: 14)),
//
//                                         Align(alignment: Alignment.centerRight,child: Text(drivers[index]['req'],style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700),)),
//                                       ],
//                                     ),
//
//                                     Padding(
//                                       padding: const EdgeInsets.only(left: 2.0),
//                                       child: Row(
//
//                                         // mainAxisSize:MainAxisSize.min ,
//                                         children: [
//                                           Text(drivers[index]['carnam'],style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold),),
//                                           //
//                                           // Padding(
//                                           //   padding: const EdgeInsets.only(left: 130.0,top: 1),
//                                           //   child: TextButton(onPressed: () {
//                                           //
//                                           //   }, child: Text("hhhoooooooo"))
//                                           // )
// Padding(
//   padding: const EdgeInsets.only(left: 158.0),
//   child:   IconButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(HexColor("#E9BC1D")),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))),onPressed: () {
//
//
//
//   }, icon: Icon(Icons.call,color: Colors.white,)),
// )
//                                         ],
//                                       ),
//                                     ),
//                                     Text(drivers[index]['numplate'],style: TextStyle(color:Colors.grey[800],fontWeight: FontWeight.bold),),
//
//                                   ],
//
//                                 ),
//
//
//                               ],
//                             ),
//
//
//
//     ],
//     ),
                                ),
                              ),
                            )));
                  },
                ),
              ),
            ),
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