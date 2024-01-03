import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswipe/views/cabtravaller.dart';
import 'package:tripswipe/views/editcabcar.dart';
import 'package:tripswipe/views/editcabtravaller.dart';

class cabedit extends StatefulWidget {
  const cabedit({Key? key}) : super(key: key);

  @override
  State<cabedit> createState() => _cabeditState();
}

class _cabeditState extends State<cabedit> {
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
                "Edit your cab service",
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
                                  builder: (context) => const editcabcar(),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
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
                              builder: (context) => const editcabtrav(),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
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
