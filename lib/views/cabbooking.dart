import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/cabautorickshaw.dart';
import 'package:tripswipe/views/cabcar.dart';
import 'package:tripswipe/views/cabtravaller.dart';

class Cabbooking extends StatefulWidget {
  const Cabbooking({Key? key}) : super(key: key);

  @override
  State<Cabbooking> createState() => _CabbookingState();
}

class _CabbookingState extends State<Cabbooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(
        backgroundColor: HexColor("D8F3DC"),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Column(children: [
              const Text(
                "Cab bookings",
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
                "Choose your category for provide your",
                style: TextStyle(shadows: [
                  Shadow(
                      color: HexColor("808080"),
                      offset: const Offset(2, 2),
                      blurRadius: 4)
                ]),
              ),
              Text(
                "service through our app",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CabCar(),
                                ));
                          },
                          child: Container(
                            height: 100,
                            width: 130,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "img/carmain-removebg-preview.png"))),
                          )),
                      const Text(
                        "Cars",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Provide your car as a",
                        style: TextStyle(color: HexColor("808080")),
                      ),
                      Text(
                        "cab",
                        style: TextStyle(color: HexColor("808080")),
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
                                  builder: (context) => const Travaller(),
                                ));
                          },
                          child: Container(
                            height: 100,
                            width: 130,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "img/TEMPO-TRAVELLER-ON-RENT-IN-PUNE-removebg-preview.png"))),
                          )),
                      const Text(
                        "Traveller",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "For long journey, with an",
                        style: TextStyle(color: HexColor("808080")),
                      ),
                      Text(
                        "expert driver",
                        style: TextStyle(color: HexColor("808080")),
                      ),
                    ],
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
                              builder: (context) => const CabAuto(),
                            ));
                      },
                      child: Container(
                        height: 100,
                        width: 130,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "img/autorickshw-removebg-preview.png"))),
                      )),
                  const Text(
                    "Auto rickshaw",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Share your comfy ",
                    style: TextStyle(color: HexColor("808080")),
                  ),
                  Text(
                    "autorickshaw through",
                    style: TextStyle(color: HexColor("808080")),
                  ),
                  Text(
                    "this app",
                    style: TextStyle(color: HexColor("808080")),
                  ),
                ],
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
                          image: AssetImage("img/mainebackground.png"))),
                ))
          ],
        ),
      ),
    );
  }
}
