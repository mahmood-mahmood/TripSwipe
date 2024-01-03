import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/users/editpassworduer.dart';
import 'package:tripswipe/views/users/editprof.dart';

class UserProf extends StatefulWidget {
  const UserProf({Key? key}) : super(key: key);

  @override
  State<UserProf> createState() => _UserProfState();
}

class _UserProfState extends State<UserProf> {
  bool isOn = false;
  String selectedLanguage = 'English'; // Default language

  final List<String> languages = ['English', 'Spanish', 'French', 'German'];

  @override
  Widget build(BuildContext context) {
    final userProController = Provider.of<Controller>(context);
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 95,
                ),

                const CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("img/pro.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  userProController.userModel.userName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userProController.userModel.userEmail,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                Card(
                    elevation: 10,
                    child: Container(
                      height: 170,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const editpro(),
                                    ));
                              },
                              child: const ListTile(
                                leading: Icon(
                                  Icons.perm_device_information,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  "Edit profile information",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          ListTile(
                            leading: const Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                            ),
                            title: const Text(
                              "Notifications",
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: TextButton(
                              onPressed: () {
                                setState(() {
                                  isOn = !isOn;
                                });
                              },
                              child: Text(
                                isOn ? 'On' : 'Off',
                                style: const TextStyle(
                                    color: Colors.blue, fontSize: 16),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.language,
                              color: Colors.white,
                            ),
                            title: const Text(
                              "Language",
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: DropdownButton<String>(
                              value: selectedLanguage,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedLanguage = newValue!;
                                });
                              },
                              style: const TextStyle(
                                color: Colors
                                    .white, // Set the text color of the selected item in the dropdown to white
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors
                                    .blue, // Set the color of the dropdown arrow to white
                              ),
                              items: languages.map((String language) {
                                return DropdownMenuItem<String>(
                                  value: language,
                                  child: Container(
                                    color: Colors
                                        .black, // Set the background color of the dropdown items to black
                                    child: Text(
                                      language,
                                      style: const TextStyle(
                                        color: Colors
                                            .blue, // Set the text color of dropdown items to white
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    )),

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
            Positioned(
              top: 458,
              left: 35,
              child: Card(
                  elevation: 10,
                  child: Container(
                    height: 120,
                    width: 290,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => myservieses(),));
                            },
                            child: const ListTile(
                              leading: Icon(
                                Icons.person_pin_rounded,
                                color: Colors.white,
                              ),
                              title: Text(
                                "History",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const editpas(),
                                  ));
                            },
                            child: const ListTile(
                              leading: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Password",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  )),
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
