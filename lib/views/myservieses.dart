import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/editcab.dart';
import 'package:tripswipe/views/profile.dart';
import 'package:tripswipe/views/rentpage.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
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
        child: Stack(
          children: [
            Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_pin_rounded),
                  Text(
                    "My services",
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
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 396,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: [
                    Column(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const cabedit()));
                            },
                            child: Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "img/cabbooking2myser-removebg-preview.png"))),
                            )),
                        const Text(
                          "Cab booking",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RentalPage(),
                                  ));
                            },
                            child: Container(
                              height: 100,
                              width: 138,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "img/carrentelservies-removebg-preview.png"))),
                            )),
                        const Text(
                          "Rental service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => Autoworkshop(),));
                              },
                              child: Container(
                                height: 100,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "img/isometric-auto-repair-horizontal-background-with-text-indoor-garage-composition-with-two-workers-repairing-car_1284-60836-removebg-preview.png"))),
                              )),
                          const Text(
                            "Workshops",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => accs()));
                              },
                              child: Container(
                                height: 100,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "img/acs-removebg-preview.png"))),
                              )),
                          const Text(
                            "Accessories",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            Positioned(
                top: 358,
                child: Container(
                  height: 200,
                  width: 360,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("img/mainebackground.png"))),
                ))
          ],
        ),
      ),
    );
  }
}
