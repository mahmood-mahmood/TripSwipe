import 'package:flutter/material.dart';
// import 'package:tripswip/nextex.dart';

class examples extends StatefulWidget {
  const examples({Key? key}) : super(key: key);

  @override
  State<examples> createState() => _examplesState();
}

class _examplesState extends State<examples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Container(
        height: 250,
        width: 320,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("himalayan"),
                    Text("rating barsbar"),
                  ],
                ),
                CircleAvatar()
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("09876"),
                    Text("melattoor"),
                    Text("melattoor"),
                  ],
                ),
                Column(
                  children: [
                    Text("kkkkkkkhhhh"),
                    IconButton(onPressed: () {}, icon: Icon(Icons.access_time))
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
