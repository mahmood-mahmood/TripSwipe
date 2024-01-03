import 'package:flutter/material.dart';
import 'package:tripswipe/views/cabpage3.dart';

import 'package:tripswipe/views/users/cabbookinguser.dart';
import 'package:tripswipe/views/users/usercabrade2.dart';

// import 'package:carousel_slider/carousel_slider.dart';
//
class pageview extends StatefulWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

//
//  List<Widget> pages = [
//    page1(),
//    page2(),
//    page3(),
//
//   ];
//
//   @override
//
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.lime,
          child: PageView(
            children: [cabbook1(), cabbook2(), cabpage3()],
          )),
    );
  }
}
