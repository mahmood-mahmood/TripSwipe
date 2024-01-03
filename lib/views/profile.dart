import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/views/editpassword.dart';
import 'package:tripswipe/views/editprofile.dart';
import 'package:tripswipe/views/login.dart';
import 'package:tripswipe/views/myservieses.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isOn = false;
  String selectedLanguage = 'English'; // Default language

  final List<String> languages = ['English', 'Spanish', 'French', 'German'];

  @override
  Widget build(BuildContext context) {
    final providerController = Provider.of<Controller>(context);
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("img/pro.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      providerController.userModel.userName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(providerController.userModel.userEmail),
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
                                          builder: (context) =>
                                              const editprofile(),
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
                  ]),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 200,
                  width: 360,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("img/mainebackground.png"))),
                )),
            Positioned(
              top: 358,
              left: 35,
              child: Card(
                  elevation: 10,
                  child: Container(
                    // height: 120,
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
                                    builder: (context) => const MyServices(),
                                  ));
                            },
                            child: const ListTile(
                              leading: Icon(
                                Icons.person_pin_rounded,
                                color: Colors.white,
                              ),
                              title: Text(
                                "My service",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const editpassword(),
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
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ),
                                  (route) => false);
                            },
                            child: const ListTile(
                              leading: Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Logout",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
