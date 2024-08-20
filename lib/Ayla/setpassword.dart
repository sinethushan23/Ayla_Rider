import 'package:ayla/widgets/button_widget.dart';
import 'package:ayla/widgets/text_form.dart';
import 'package:flutter/material.dart';

class setpassword extends StatelessWidget {
  const setpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      //Body
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Set Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                text_form(
                  formwidth: 350,
                  labeltext: "Enter your password",
                  fontsize: 20,
                ),
                text_form(
                  formwidth: 350,
                  labeltext: "Confirm your password",
                  fontsize: 20,
                ),
                // register button
                SizedBox(
                  height: 20,
                ),
                button_widget(
                  //button widget
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  foregroundColor: Color.fromARGB(255, 255, 254, 254),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  buttonWidth: 300,
                  buttonHeight: 50,
                  buttonText: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
