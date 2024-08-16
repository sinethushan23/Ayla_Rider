import 'package:ayla/Ayla/trackride.dart';
import 'package:ayla/widgets/custom_page2.dart';
import 'package:flutter/material.dart';

class vehicleselection extends StatelessWidget {
  const vehicleselection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: custom_page2(
        title: 'Vehicle Selection',
        subTitle:
            'Users have the liberty to choose the type of vehicle as per their',
        titleColor: Colors.black,
        subtitleColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => trackride()),
          );
        },
      ),
    );
  }
}
