import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripswipe/views/users/rootdistants.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Selectlocation extends StatefulWidget {
  const Selectlocation({super.key});

  @override
  State<Selectlocation> createState() => _SelectlocationState();
}

class _SelectlocationState extends State<Selectlocation> {
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
          padding: const EdgeInsets.only(top: 68.0, left: 15, right: 15),
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
                    Text(
                      "Your Current Location",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 498.0, left: 15, right: 15),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              child: Container(
                height: 123,
                width: 390,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 48,
                        width: 285,
                        child: TextField(
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search Your Destination",
                                hintStyle: TextStyle(color: Colors.white60),
                                fillColor: Colors.black,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none)))),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => rootdistance(),
                              ));
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.my_location,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Carrear carodos street tordenar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ))
                  ],
                ),
              )),
        ),
      ],
    ));
  }
}
