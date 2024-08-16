import 'package:flutter/material.dart';

class custom_page2 extends StatelessWidget {
  final String title;
  final String subTitle;
  final titleColor;
  final subtitleColor;
  final VoidCallback onPressed;

  custom_page2({
    required this.title,
    required this.subTitle,
    this.titleColor,
    this.subtitleColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10,
          ), // add padding
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // add this
              children: [
                Text(
                  title, //title parameter

                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: titleColor),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  // add some margin
                  child: Text(
                    subTitle, //subtitle parameter
                    style: TextStyle(fontSize: 18, color: subtitleColor),
                    textAlign: TextAlign.center,
                  ),
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
                "lib/assest/city.png",
              ),
              SizedBox(width: 100), // add space
              Image.asset(
                "lib/assest/car.png",
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20),
            //button
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 161, 143, 143), // text color
                ),
              ),
              onPressed: onPressed,
              child: SizedBox(
                width: 300,
                height: 50,
                child: Center(
                  child: Text('Get Started'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
