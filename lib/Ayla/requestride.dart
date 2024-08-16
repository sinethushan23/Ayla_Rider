import 'package:ayla/Ayla/vehicleselection.dart';
import 'package:ayla/widgets/custom_page2.dart';
import 'package:flutter/material.dart';

class requestride extends StatelessWidget {
  const requestride({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: custom_page2(
        title: 'Request a Ride',
        subTitle: 'Request a ride get picked up by a nearby community driver',
        titleColor: Colors.black,
        subtitleColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vehicleselection()),
          );
        },
      ),
    );
  }
}
