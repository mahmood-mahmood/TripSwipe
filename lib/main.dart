import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripswipe/controller/cab_car_controller.dart';
import 'package:tripswipe/controller/controller.dart';
import 'package:tripswipe/firebase_options.dart';
import 'package:tripswipe/views/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Controller>(
          create: (context) => Controller(),
        ),
        ChangeNotifierProvider<CabController>(
          create: (context) => CabController(),
        ),
      ],
      child: MaterialApp(
        title: 'TripSwipe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const Login(),
      ),
    );
  }
}
