import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/userrentelpages/rentlist.dart';
import 'package:tripswipe/views/users/cabbookpages.dart';
import 'package:tripswipe/views/users/driveconform.dart';
import 'package:tripswipe/views/users/driverlist.dart';
import 'package:tripswipe/views/users/rootdistants.dart';
import 'package:tripswipe/views/userworkshop/workshoplist.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkshopPage3 extends StatelessWidget {
  const WorkshopPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        FlutterMap(
          mapController: MapController(),
          options: const MapOptions(
            keepAlive: true,
            initialCenter: LatLng(10.977824672450085, 76.20258134232894),
            initialZoom: 11.2,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            const MarkerLayer(markers: [
              Marker(
                width: 30.0,
                height: 30.0,
                point: LatLng(10.977824672450085, 76.20258134232894),
                child: Icon(
                  Icons.location_on_sharp,
                  size: 35,
                  color: Colors.red,
                ),
              )
            ]),
            RichAttributionWidget(
              attributions: [
                TextSourceAttribution(
                  'OpenStreetMap contributors',
                  onTap: () => launchUrl(
                      Uri.parse('https://openstreetmap.org/copyright')),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 62.0, left: 15, right: 15),
          child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 50,
                width: 395,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_sharp,
                          color: Colors.grey[400],
                        )),
                    const Text(
                      "Your Current Location",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 128.0),
          child: Column(
            children: [
              Expanded(
                child: Consumer<Controller>(
                    builder: (context, workshopController, _) {
                  return FutureBuilder(
                      future: workshopController.fetchWokshops(),
                      builder: (context, snapshot) {
                        return snapshot.connectionState ==
                                ConnectionState.waiting
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : workshopController.workshopsList.isEmpty
                                ? const Center(
                                    child: Text('No workshops found'),
                                  )
                                : ListView.builder(
                                    itemCount:
                                        workshopController.workshopsList.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15.0, left: 14, right: 15),
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
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.white),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 5.0,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              2.0),
                                                                  child: Text(
                                                                    workshopController
                                                                            .workshopsList[index]
                                                                        [
                                                                        'workshopName'],
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
                                                                            offset:
                                                                                Offset(2, 2),
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
                                                            const SizedBox(
                                                              width: 30,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      right:
                                                                          8.0),
                                                              child:
                                                                  CircleAvatar(
                                                                radius: 25,
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                        workshopController.workshopsList[index]
                                                                            [
                                                                            'photo']),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 8.0,
                                                                  right: 8),
                                                          child: Divider(
                                                            thickness: 0.6,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          2.0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Column(
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Text(
                                                                            "Workingtime:",
                                                                            style:
                                                                                TextStyle(
                                                                              color: HexColor("#2D6A4F"),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                              "9Amto5Pm",
                                                                              style: TextStyle(color: HexColor("#2D6A4F"), fontWeight: FontWeight.bold, fontSize: 14)),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    workshopController
                                                                            .workshopsList[index]
                                                                        [
                                                                        'location'],
                                                                    style: TextStyle(
                                                                        color: HexColor(
                                                                            "#2D6A4F"),
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 40,
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  'Request Pending',
                                                                  style: TextStyle(
                                                                      color: HexColor(
                                                                          "#1B4332"),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                                IconButton(
                                                                    style: ButtonStyle(
                                                                        backgroundColor:
                                                                            MaterialStatePropertyAll(HexColor(
                                                                                "#1B4332")),
                                                                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                            borderRadius: BorderRadius.circular(
                                                                                25),),),),
                                                                    onPressed:
                                                                        () {
                                                                      workshopController.callingFunction(workshopController
                                                                          .workshopsList[
                                                                              index]
                                                                              [
                                                                              'contact']
                                                                          .toString());
                                                                    },
                                                                    icon:
                                                                        const Icon(
                                                                      Icons
                                                                          .call,
                                                                      color: Colors
                                                                          .white,
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
                                  );
                      });
                }),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
