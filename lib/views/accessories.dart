import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/acswheels.dart';
import 'package:tripswipe/views/body_parts.dart';
import 'package:tripswipe/views/helmets.dart';
import 'package:tripswipe/views/lighting.dart';
import 'package:tripswipe/views/workshop.dart';

class Accessories extends StatelessWidget {
  const Accessories({Key? key}) : super(key: key);

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
                "Provide your accessories",
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
                "Select your vehicle and the accessories",
                style: TextStyle(shadows: [
                  Shadow(
                      color: HexColor("808080"),
                      offset: const Offset(2, 2),
                      blurRadius: 4)
                ]),
              ),
              Text(
                "willing to provide with their details .",
                style: TextStyle(shadows: [
                  Shadow(
                      color: HexColor("808080"),
                      offset: const Offset(2, 2),
                      blurRadius: 4)
                ]),
              ),
              const SizedBox(
                height: 10,
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
                                    builder: (context) => const Acswheels(),
                                  ));
                            },
                            child: Container(
                              height: 135,
                              width: 140,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "img/carwheels-removebg-preview.png"))),
                            )),
                        const Text(
                          "Wheels",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Lighting()));
                            },
                            child: CircleAvatar(
                                radius: 45,
                                child: Container(
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage("img/idea.jpg"))),
                                ))),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Lighting",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
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
                                            const BodyParts()));
                              },
                              child: Container(
                                height: 135,
                                width: 140,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "img/workshopp-removebg-preview.png"))),
                              )),
                          const Text(
                            "Body Parts",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Helmets()));
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: AssetImage(
                                            "img/helm-2060063_960_720.png"))),
                              )),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Helmets",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
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
                          image: AssetImage("img/mainebackground.png"))),
                ))
          ],
        ),
      ),
    );
  }
}
