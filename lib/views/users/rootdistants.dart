import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripswipe/views/users/cabbookinguser.dart';
import 'package:tripswipe/views/users/cabbookpages.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class rootdistance extends StatefulWidget {
  const rootdistance({Key? key}) : super(key: key);

  @override
  State<rootdistance> createState() => _rootdistanceState();
}

class _rootdistanceState extends State<rootdistance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
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
                            Icon(
                              Icons.close_rounded,
                              color: Colors.grey,
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
                              padding: const EdgeInsets.only(left: 19.0),
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
          padding: const EdgeInsets.only(top: 555.0, left: 30, right: 15),
          child: Card(
              elevation: 5,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pageview(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 48,
                    width: 295,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("E9BC1D")),
                    child: Text(
                      "Submit",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ))),
        ),
      ],
    ));
  }
}
