import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripswipe/views/users/autorickshaw/autodriverdetails.dart';
import 'package:tripswipe/views/users/autorickshaw/bookany.dart';
import 'package:tripswipe/views/users/cabbookinguser.dart';
import 'package:tripswipe/views/users/cabbookpages.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class autorikbook extends StatefulWidget {
  const autorikbook({Key? key}) : super(key: key);

  @override
  State<autorikbook> createState() => _autorikbookState();
}

class _autorikbookState extends State<autorikbook> {
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
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset("img/locateaarow.png"),
                        Image.asset("img/locatearwrownded.png"),
                        const SizedBox(
                          height: 2,
                        ),
                        Image.asset("img/locatearwrownded.png"),
                        const SizedBox(
                          height: 2,
                        ),
                        Image.asset("img/locatearwrownded.png"),
                        const SizedBox(
                          height: 2,
                        ),
                        Image.asset("img/locatearwrownded.png"),
                        const SizedBox(
                          height: 2,
                        ),
                        Image.asset("img/redrowndwerd.png"),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Carrear carodos street tordenar",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Icon(
                                Icons.close_rounded,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "de Provenicad",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 75,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
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
            padding: const EdgeInsets.only(top: 345.0, left: 30, right: 15),
            child: Card(
                elevation: 10,
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 295,
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
                          height: 20,
                        ),
                        Row(
                          children: [
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 60,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "img/autorikshaw-removebg-preview.png"))),
                                )),
                            Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AutoBook(),
                                        ));
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 195,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            " Book Any",
                                            style: TextStyle(
                                                color: HexColor("1B4332"),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            " Get Nearest Auto",
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

                        //second

                        // Row(
                        //   children: [
                        //     Card(
                        //         elevation: 5,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(10)),
                        //         child: Container(
                        //           height: 60,
                        //           width: 75,
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(10),
                        //               color: Colors.white,
                        //               image: DecorationImage(
                        //                   image: AssetImage(
                        //                       "img/autorickshw-removebg-preview.png"))),
                        //         )),
                        //     Card(
                        //         elevation: 5,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(10)),
                        //         child: InkWell(
                        //           onTap: () {
                        //             Navigator.push(
                        //                 context,
                        //                 MaterialPageRoute(
                        //                   builder: (context) =>
                        //                       autodrivedetail(),
                        //                 ));
                        //           },
                        //           child: Container(
                        //             height: 60,
                        //             width: 195,
                        //             decoration: BoxDecoration(
                        //                 borderRadius: BorderRadius.circular(10),
                        //                 color: Colors.white),
                        //             child: Padding(
                        //               padding: const EdgeInsets.only(left: 5.0),
                        //               child: Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   SizedBox(
                        //                     height: 5,
                        //                   ),
                        //                   Text(
                        //                     " Auto rickshaw",
                        //                     style: TextStyle(
                        //                         color: HexColor("1B4332"),
                        //                         fontWeight: FontWeight.bold),
                        //                   ),
                        //                   SizedBox(
                        //                     height: 2,
                        //                   ),
                        //                   Text(
                        //                     " Comfy,Economical traveller",
                        //                     style: TextStyle(
                        //                         color: HexColor("888888")),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ),
                        //         ))
                        //   ],
                        // ),

                        //third

                        Card(
                            elevation: 5,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const pageview(),
                                      ));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 48,
                                  width: 269,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black26, width: 2),
                                      borderRadius: BorderRadius.circular(10),
                                      color: HexColor("E9BC1D")),
                                  child: const Text(
                                    "Book Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ))),

                        //four
                      ],
                    ),
                  ),
                ))),
      ],
    ));
  }
}
// HexColor("E9BC1D")
