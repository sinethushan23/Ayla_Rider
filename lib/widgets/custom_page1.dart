import 'package:flutter/material.dart';

class custom_page1 extends StatelessWidget {
  const custom_page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 50), // add some padding
            child: Text(
              'AYLA',
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.bold,
              ),
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
              onPressed: () {
                Navigator.pushNamed(context, '/requestride');
              },
              //button style
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: SizedBox(
                width: 300,
                height: 50,
                child: Center(
                  child: Text('Get Started'),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
