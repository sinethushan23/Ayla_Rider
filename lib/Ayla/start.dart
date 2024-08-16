import 'package:ayla/widgets/custom_page1.dart';
import 'package:flutter/material.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: custom_page1(),
    );
  }
}
