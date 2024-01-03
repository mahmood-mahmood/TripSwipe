import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<Map<String, dynamic>> drivers = [
  {
    'name': 'Starbi',
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
    'type': "Hatchback",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bus': "BUS",
    'bany': "BUS",
    'img': AssetImage("img/starbitaxidriver.jpg"),
  },
  {
    'img': AssetImage("img/taxid3.jpg"),
    'name': 'Muhammed',
    'rat': RatingBar.builder(
      initialRating: 3.0,
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
    'type': "Sedan  ",
    'carnam': "Swift Dzire",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bany': "Traveller",
    'bus': "BUS",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Hakkeem',
    'rat': RatingBar.builder(
      initialRating: 2.5,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bus': "BUS",
    'bany': "BUS",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Jasil',
    'rat': RatingBar.builder(
      initialRating: 3.5,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bus': "BUS",
    'bany': "Traveller",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Shameem',
    'rat': RatingBar.builder(
      initialRating: 4.9,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bus': "BUS",
    'bany': "Traveller",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Zodiac',
    'rat': RatingBar.builder(
      initialRating: 5.0,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bus': "BUS",
    'bany': "BUS",
  },
  {
    'img': AssetImage("img/taxid3.jpg"),
    'name': 'Muhammed',
    'rat': RatingBar.builder(
      initialRating: 2.5,
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
    'type': "Sedan  ",
    'carnam': "Swift Dzire",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bany': "Traveller",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Hakkeem',
    'rat': RatingBar.builder(
      initialRating: 1.5,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bany': "BUS",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Jasil',
    'rat': RatingBar.builder(
      initialRating: 2.2,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bany': "Traveller",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Shameem',
    'rat': RatingBar.builder(
      initialRating: 5.5,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bany': "BUS",
  },
  {
    'img': AssetImage("img/tacid2.jpg"),
    'name': 'Zodiac',
    'rat': RatingBar.builder(
      initialRating: 1.5,
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
    'type': "SUV  ",
    'carnam': "ALTO 800",
    'numplate': "KL-53T-1889",
    'req': "Request Pending",
    'hat': 'HatchBack',
    'sed': "Sedan",
    'Suv': "SUV",
    'bany': "Traveller",
  },
];
