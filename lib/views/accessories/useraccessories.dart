import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/accessories/accslist.dart';

class UserAccessories extends StatelessWidget {
  const UserAccessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accessoriesController = Provider.of<Controller>(context,listen: false);
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
                        ),),
                  ],
                ),
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
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                   SizedBox(
                    height: 50,
                    child: CupertinoSearchTextField(
                      onChanged: (query) {
                        accessoriesController.filterAcccessoryList(query);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: SizedBox(
                      // height: 556,
                      child: FutureBuilder(
                          future: accessoriesController.fetchAccessories().then((value) => accessoriesController.addToFiltered(),),
                          builder: (context, snapshot) {
                            return snapshot.connectionState ==
                                    ConnectionState.waiting
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : accessoriesController
                                        .filteredaccessoriesList.isEmpty
                                    ? const Center(
                                        child: Text('No accessories found'),
                                      )
                                    : GridView.builder(
                                        itemCount: accessoriesController
                                            .filteredaccessoriesList.length,
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
                                                                    .circular(
                                                                        10),
                                                            color: Colors
                                                                .white))),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 105.0,
                                                          left: 6),
                                                  child: SizedBox(
                                                    width: 165,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          accessoriesController
                                                                  .filteredaccessoriesList[
                                                              index]['brandName'],
                                                          style: TextStyle(
                                                              color: HexColor(
                                                                  "#2D6A4F"),
                                                              shadows: const [
                                                                Shadow(
                                                                    color: Colors
                                                                        .grey,
                                                                    offset:
                                                                        Offset(
                                                                            2,
                                                                            2),
                                                                    blurRadius:
                                                                        5)
                                                              ],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Row(
                                                          // mainAxisAlignment:
                                                          //     MainAxisAlignment
                                                          //         .spaceBetween,
                                                          children: [
                                                            const SizedBox(
                                                              width: 1,
                                                            ),
                                                            Text(
                                                              "MRP : ₹${accessoriesController.filteredaccessoriesList[index]['price']}",
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900),
                                                            ),
                                                            const Spacer(),
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
                                                                      .filteredaccessoriesList[
                                                                          index]
                                                                          [
                                                                          'contact']
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
                                                          accessoriesController
                                                                  .filteredaccessoriesList[
                                                              index]['location'],
                                                          style: const TextStyle(
                                                              color: Colors
                                                                  .black,
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
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.white,
                                                        image:
                                                            DecorationImage(
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
                          }),
                    ),
                  ),
                ],
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
