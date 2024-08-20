import 'package:ayla/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  // Changed class name to follow naming conventions
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 0, 0, 0), // color of the back button
        ),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 50,
            ), // add padding
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // add this
                children: [
                  Text(
                    "Have a better sharing experience",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                      decoration:
                          TextDecoration.none, // Ensure no underline is applied
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "lib/assest/taxi on phone.png",
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min, // add this
                children: [
                  button_widget(
                    backgroundColor: const Color.fromARGB(255, 255, 253, 253),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    buttonWidth: 300,
                    buttonHeight: 50,
                    buttonText: 'Create an Account',
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                  ),
                  SizedBox(height: 10), // add some space between the buttons
                  button_widget(
                    backgroundColor: const Color.fromARGB(255, 255, 253, 253),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    buttonWidth: 300,
                    buttonHeight: 50,
                    buttonText: 'Next',
                    onPressed: () {
                      Navigator.pushNamed(context, '/start');
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
