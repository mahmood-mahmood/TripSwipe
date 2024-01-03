import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripswipe/views/users/cabbookpages.dart';
import 'package:tripswipe/views/users/rootdistants.dart';
import 'package:tripswipe/views/userworkshop/userwork3.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class workshoppage2 extends StatefulWidget {
  const workshoppage2({Key? key}) : super(key: key);

  @override
  State<workshoppage2> createState() => _workshoppage2State();
}

class _workshoppage2State extends State<workshoppage2> {
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
          padding: const EdgeInsets.only(top: 540.0, left: 15, right: 15),
          child: Card(
              elevation: 5,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WorkshopPage3(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 48,
                    width: 319,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("E9BC1D")),
                    child: Text(
                      "Search",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ))),
        ),
      ],
    ));
  }
}
