import 'package:ayla/widgets/button_widget.dart';
import 'package:ayla/widgets/text_form.dart';
import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Sign In',
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
                  labeltext: "Email or phone number",
                  fontsize: 20,
                ),
                text_form(
                  formwidth: 350,
                  labeltext: "Enter your password",
                  fontsize: 20,
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: [
                    Text(
                        "                                                           "),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/otpverification');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                // register button
                SizedBox(
                  height: 1,
                ),
                button_widget(
                  //button widget
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  buttonWidth: 300,
                  buttonHeight: 50,
                  buttonText: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Or, Sign up With",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // google IOS facebook signup
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/otpverification');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
