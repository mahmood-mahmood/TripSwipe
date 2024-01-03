import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/accessories.dart';
import 'package:tripswipe/views/automobileworkshope.dart';
import 'package:tripswipe/views/cabbooking.dart';
import 'package:tripswipe/views/profile.dart';
import 'package:tripswipe/views/rentpage.dart';

class Promain extends StatefulWidget {
  const Promain({super.key});

  @override
  State<Promain> createState() => _PromainState();
}

class _PromainState extends State<Promain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(
        backgroundColor: HexColor("D8F3DC"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ));
              },
              child: const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("img/pro.png"),
              ))
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Consumer<Controller>(builder: (context, providerController, _) {
          return FutureBuilder(
              future: providerController.fetchProvider('providers'),
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        children: [
                          Column(children: [
                            const Text(
                              "Choose your category",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  shadows: [
                                    Shadow(
                                        color: Colors.grey,
                                        offset: Offset(2, 2),
                                        blurRadius: 4)
                                  ]),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "choose your vehicle to provide service",
                              style: TextStyle(shadows: [
                                Shadow(
                                    color: HexColor("808080"),
                                    offset: const Offset(2, 2),
                                    blurRadius: 4)
                              ]),
                            ),
                            Text(
                              "through this app",
                              style: TextStyle(shadows: [
                                Shadow(
                                    color: HexColor("808080"),
                                    offset: const Offset(2, 2),
                                    blurRadius: 4)
                              ]),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
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
                                                      const Cabbooking(),
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
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "For booking ",
                                        style: TextStyle(
                                            color: HexColor("808080")),
                                      ),
                                      Text("taxi,traveller and auto",
                                          style: TextStyle(
                                              color: HexColor("808080"))),
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
                                                      const RentalPage(),
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
                                            fontSize: 15),
                                      ),
                                      Text("For renting cars and",
                                          style: TextStyle(
                                              color: HexColor("808080"))),
                                      Text("motorcycles",
                                          style: TextStyle(
                                              color: HexColor("808080"))),
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
                                                        const Autoworkshop(),
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
                                              fontSize: 15),
                                        ),
                                        Text("Nearby workshops and ",
                                            style: TextStyle(
                                                color: HexColor("808080"))),
                                        Text("their details",
                                            style: TextStyle(
                                                color: HexColor("808080"))),
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
                                                          const Accessories()));
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
                                              fontSize: 15),
                                        ),
                                        Text("Nearby workshops and ",
                                            style: TextStyle(
                                                color: HexColor("808080"))),
                                        Text("their details",
                                            style: TextStyle(
                                                color: HexColor("808080"))),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                height: 200,
                                width: 360,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "img/mainebackground.png"))),
                              ))
                        ],
                      );
              });
        }),
      ),
    );
  }
}
