import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/accessories/accslist.dart';

class UserAccessories extends StatelessWidget {
  const UserAccessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("202020"),
        body: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              painter: HeaderCurvedContainer(),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 165.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 45,
                      width: 339,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder()),
                      ))
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: Text(
                  //     'Profile',
                  //     style: TextStyle(
                  //       fontSize: 35.0,
                  //       letterSpacing: 1.5,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.w600,
                  //
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 108.0),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width / 2,
                  //     height: MediaQuery.of(context).size.width / 2,
                  //     padding: const EdgeInsets.all(10.0),
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       color: Colors.white,
                  //       // image: DecorationImage(
                  //       //   image: AssetImage(null),
                  //       //   fit: BoxFit.cover,
                  //       // ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 498.0),
              child: Container(
                height: 300,
                width: 330,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("img/itslucky.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 238.0),
              child: SizedBox(
                height: 556,
                child: Consumer<Controller>(
                    builder: (context, accessoriesController, _) {
                  return FutureBuilder(
                      future: accessoriesController.fetchAccessories(),
                      builder: (context, snapshot) {
                        return snapshot.connectionState ==
                                ConnectionState.waiting
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : accessoriesController.accessoriesList.isEmpty
                                ? const Center(
                                    child: Text('No accessories found'),
                                  )
                                : GridView.builder(
                                    itemCount: accessoriesController
                                        .accessoriesList.length,
                                    controller: ScrollController(
                                      keepScrollOffset: false,
                                    ),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.8,
                                            crossAxisSpacing: 0.0,
                                            mainAxisSpacing: 14),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4, right: 4),
                                        child: Stack(
                                          children: [
                                            Card(
                                                elevation: 5,
                                                child: Container(
                                                    height: 220,
                                                    width: 165,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.white))),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 105.0, left: 6),
                                              child: SizedBox(
                                                width: 165,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      accessoriesController
                                                              .accessoriesList[
                                                          index]['brandName'],
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              "#2D6A4F"),
                                                          shadows: const [
                                                            Shadow(
                                                                color:
                                                                    Colors.grey,
                                                                offset: Offset(
                                                                    2, 2),
                                                                blurRadius: 5)
                                                          ],
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const SizedBox(
                                                          width: 1,
                                                        ),
                                                        Text(
                                                          "MRP : ₹${accessoriesController.accessoriesList[index]['price']}",
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        const SizedBox(
                                                          width: 25,
                                                        ),
                                                       
                                                        IconButton(
                                                                  style:
                                                                      ButtonStyle(
                                                                    backgroundColor:
                                                                        MaterialStatePropertyAll(
                                                                            HexColor("#E9BC1D")),
                                                                    shape:
                                                                        MaterialStatePropertyAll(
                                                                      RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    accessoriesController.callingFunction(accessoriesController
                                                                        .accessoriesList[
                                                                            index]
                                                                        ['contact']
                                                                        .toString());
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons.call,
                                                                    color: Colors
                                                                        .white,
                                                                  )),
                                                        const SizedBox(
                                                          width: 4,
                                                        ),

                                                      ],
                                                    ),
                                                     Text(
                                                        accessoriesController.accessoriesList[index]['location'],
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Card(
                                                elevation: 5,
                                                child: Container(
                                                  height: 95,
                                                  width: 165,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.white,
                                                    image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: NetworkImage(
                                                        accessoriesController
                                                                .accessoriesList[
                                                            index]['photo'],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Card(elevation: 5,child: Container(height: 80,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[800]),child: Image.asset("img/bird_fd4_drools-removebg-preview.png"),)),
                                          ],
                                        ),
                                      );
                                    });
                      });
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CustomPainter class to for the header curved-container
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = HexColor("#4D5151");
    Path path = Path()
      ..relativeLineTo(0, 120)
      ..quadraticBezierTo(size.width / 2, 200.0, size.width, 120)
      ..relativeLineTo(0, -120)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
