import 'package:ayla/Ayla/welcome.dart';
import 'package:ayla/widgets/custom_page2.dart';
import 'package:flutter/material.dart';

class trackride extends StatelessWidget {
  const trackride({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: custom_page2(
        title: 'Track Your Ride',
        subTitle: 'Have a better sharing experience',
        titleColor: Colors.black,
        subtitleColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => welcome()),
          );
        },
      ),
    );
  }
}
