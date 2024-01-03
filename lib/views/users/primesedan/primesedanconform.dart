import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:latlong2/latlong.dart';

class sedanconform extends StatefulWidget {
  sedanconform(
      {super.key,
      required this.img,
      required this.name,
      required this.rat,
      required this.type,
      required this.carnam,
      required this.numplate,
      required this.req});
  var img;
  var name;
  var rat;
  var type;
  var carnam, numplate, req;

  @override
  State<sedanconform> createState() => _sedanconformState();
}

class _sedanconformState extends State<sedanconform> {
  var pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            FlutterMap(
              mapController: MapController(),
              options: MapOptions(
                keepAlive: true,
                initialCenter: LatLng(10.977824672450085, 76.20258134232894),
                initialZoom: 11.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(markers: [
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
                  icon: Icon(Icons.arrow_back)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 68.0, left: 15, right: 20),
              child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 80,
                    width: 365,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset("img/locateaarow.png"),
                            Image.asset("img/locatearwrownded.png"),
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset("img/locatearwrownded.png"),
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset("img/locatearwrownded.png"),
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset("img/locatearwrownded.png"),
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset("img/redrowndwerd.png"),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Carrear carodos street tordenar",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "de Provenicad",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 75,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 45.0),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.close_rounded,
                                        color: Colors.grey,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 198.0, left: 15),
              child: Card(
                color: Colors.white,
                child: Container(
                  height: 400,
                  width: 315,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 145,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5.0,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          widget.name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              shadows: [
                                                Shadow(
                                                  offset: Offset(2, 2),
                                                  color: Colors.grey,
                                                  blurRadius: 3,
                                                )
                                              ]),
                                        ),
                                      ),
                                      Row(children: [
                                        widget.rat,
                                        Text(
                                          "Rating",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ]),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 65,
                                  ),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: widget.img,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Divider(
                                  thickness: 0.6,
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Car Type:",
                                            style: TextStyle(
                                                color: HexColor("#090808"),
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(widget.type,
                                              style: TextStyle(
                                                  color: HexColor("#2D6A4F"),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14)),
                                        ],
                                      ),
                                      Text(
                                        widget.carnam,
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        widget.numplate,
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        widget.req,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      IconButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      HexColor("#E9BC1D")),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)))),
                                          onPressed: () {
//
//
//
                                          },
                                          icon: Icon(
                                            Icons.call,
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
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
                      Card(
                          elevation: 8,
                          child: InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => pageview(),));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 48,
                                width: 295,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black26, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: HexColor("E9BC1D")),
                                child: Text(
                                  "Confirm your ride",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ))),
                      Card(
                          elevation: 8,
                          child: InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => pageview(),));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 48,
                                width: 295,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black26, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                                child: Text(
                                  "Cancel your ride",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ))),
                      Text(
                        '''
Lorem Ipsum has been the industry's standard 
dummy text ever since the 1500s,ipsum ipsum
Lorem Ipsum has been the industry'sipsumd
 standarddumm y text ever since the 1500s, 
  unknown printer took a galley of type and 
  ambled it to make a type specimen book.''',
                        style: TextStyle(color: HexColor("#3A735A")),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
