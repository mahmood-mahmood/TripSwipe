import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<Map<String, dynamic>> work = [
  {
    'name': 'Supertyres',
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
    'rat1': "9am to 5pm",
    'at': "Palakkad Road,",
    'in': "Dubaipadi",
    'img': AssetImage("img/carworkshopmaine.jpg"),
    'req': "Request Pending",
  },
  {
    'name': ' MRF Tyres',
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
    'rat1': "9am to 5pm",
    'at': "Manjeri Road,",
    'in': "Mankada",
    'img': AssetImage("img/carworkshopmaine.jpg"),
    'req': "Request Pending",
  },
  {
    'name': 'Supertyres',
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
    'rat1': "9am to 5pm",
    'at': "Palakkad Road,",
    'in': "Dubaipadi",
    'img': AssetImage("img/carworkshopmaine.jpg"),
    'req': "Request Pending",
  },
  {
    'name': ' MRF Tyres',
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
    'rat1': "9am to 5pm",
    'at': "Manjeri Road,",
    'in': "Mankada",
    'img': AssetImage("img/carworkshopmaine.jpg"),
    'req': "Request Pending",
  },
];
