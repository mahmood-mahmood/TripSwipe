import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<Map<String, dynamic>> acscar = [
  {
    'name': 'GLOBE RED ROOSTER BLACK',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹2200/day",
    'in': "₹4,555",
    'img': AssetImage("img/caracs1-removebg-preview.png"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs2.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs3.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs4.jpg"),
  },
  {
    'name': 'GLOBE RED ROOSTER BLACK',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹2200/day",
    'in': "₹4,555",
    'img': AssetImage("img/caracs1-removebg-preview.png"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs2.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs3.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs4.jpg"),
  },
  {
    'name': 'GLOBE RED ROOSTER BLACK',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹2200/day",
    'in': "₹4,555",
    'img': AssetImage("img/caracs1-removebg-preview.png"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs2.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs3.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs4.jpg"),
  },
  {
    'name': 'GLOBE RED ROOSTER BLACK',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹2200/day",
    'in': "₹4,555",
    'img': AssetImage("img/caracs1-removebg-preview.png"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs2.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs3.jpg"),
  },
  {
    'name': 'MRF ZLX 4 Wheeler Tyre (165/80R14, Tube Less)',
    'rat': RatingBar.builder(
      initialRating: 3.2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    "off": "59%off",
    'ret': "₹9,999",
    'in': "₹4,555",
    'img': AssetImage("img/caracs4.jpg"),
  },
];
