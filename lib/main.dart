import 'package:ayla/Ayla/home.dart';
import 'package:ayla/Ayla/otpverification.dart';
import 'package:ayla/Ayla/setpassword.dart';
import 'package:ayla/Ayla/signin.dart';
import 'package:ayla/Ayla/signup.dart';
import 'package:ayla/Ayla/welcome.dart';
import 'package:ayla/Ayla/start.dart';
import 'package:ayla/Ayla/requestride.dart';
import 'package:ayla/Ayla/trackride.dart';
import 'package:ayla/Ayla/vehicleselection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/start',
      routes: {
        '/start': (context) => start(),
        '/requestride': (context) => requestride(),
        '/vehicleselection': (context) => vehicleselection(),
        '/trackride': (context) => trackride(),
        '/welcome': (context) => welcome(),
        '/signup': (context) => Signup(),
        '/otpverification': (context) => otpverification(),
        '/setpassword': (context) => setpassword(),
        '/signin': (context) => signin(),
        '/home': (context) => home(),
      },
    );
  }
}
