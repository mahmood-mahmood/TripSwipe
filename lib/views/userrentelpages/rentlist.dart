import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<Map<String, dynamic>> hatch = [
  {
    'name': 'SWIFT',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹2200/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/zswift-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'ALTO 800',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹1500/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/maruti-alto-800-1000x1000-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'BALENO',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹900/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/baleano-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'SWIFT',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹2200/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/zswift-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'ALTO 800',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹1500/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/maruti-alto-800-1000x1000-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'BALENO',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹900/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/baleano-removebg-preview.png"),
    'req': "Request Pending",
  },
];

List<Map<String, dynamic>> bike = [
  {
    'name': 'Himalayan',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹2200/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/royal-enfield-himalayan-bikes-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'Xpulse',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹1500/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/hero-x-plus-small-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'Unicorn',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹900/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img':
        const AssetImage("img/honda-cb-unicorn-160-disc-bike-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'Himalayan',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹2200/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/royal-enfield-himalayan-bikes-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'Xpulse',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹1500/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/hero-x-plus-small-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'Unicorn',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat': "₹900/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img':
        const AssetImage("img/honda-cb-unicorn-160-disc-bike-removebg-preview.png"),
    'req': "Request Pending",
  },
];

List<Map<String, dynamic>> scooters = [
  {
    'name': 'Access',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat1': "₹2200/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/access-125-10.png"),
    'req': "Request Pending",
  },
  {
    'name': ' Fascino',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat1': "₹1500/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/YELLOW-COCKTAIL-STD.png"),
    'req': "Request Pending",
  },
  {
    'name': 'activa',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat1': "₹900/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage(
        "img/honda-activa-6g-1671442494-6679805-removebg-preview.png"),
    'req': "Request Pending",
  },
  {
    'name': 'Access',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat1': "₹2200/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/access-125-10.png"),
    'req': "Request Pending",
  },
  {
    'name': ' Fascino',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat1': "₹1500/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage("img/YELLOW-COCKTAIL-STD.png"),
    'req': "Request Pending",
  },
  {
    'name': 'activa',
    'rat': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemSize: 10, // Set the size as per your requirement
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
    'rat1': "₹900/day",
    'at': "Melattur",
    'in': "Perinthalmanna",
    'img': const AssetImage(
        "img/honda-activa-6g-1671442494-6679805-removebg-preview.png"),
    'req': "Request Pending",
  },
];
