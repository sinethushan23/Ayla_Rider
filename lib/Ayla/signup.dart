import 'package:ayla/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      //Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //Sign up form
            //Name
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        style: BorderStyle.solid)),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your full name';
                }
                return null;
              },
            ),

            //Mobile number
            SizedBox(height: 30),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        style: BorderStyle.solid)),
              ),
              validator: (value) {
                if (value == null) {
                  return 'Please enter a valid mobile number';
                }
                return null;
              },
            ),

            //mobile number selection part
            SizedBox(height: 25),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: 'Gender',
                border: OutlineInputBorder(),
              ),
              items: [
                DropdownMenuItem(
                  child: Text('Male'),
                  value: 'Male',
                ),
                DropdownMenuItem(
                  child: Text('Female'),
                  value: 'Female',
                ),
                DropdownMenuItem(
                  child: Text('Other'),
                  value: 'Other',
                ),
              ],

              //gender selcletion
              onChanged: (value) {
                setState(() {
                  _selectedGender = value as String?;
                });
              },
              value: _selectedGender,
              validator: (value) {
                if (value == null) {
                  return 'Please select a gender';
                }
                return null;
              },
            ),
            //text form field end
            //sign up button

            SizedBox(
              height: 20,
            ),
            button_widget(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              foregroundColor: Color.fromARGB(255, 255, 254, 254),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              buttonWidth: 300,
              buttonHeight: 50,
              buttonText: 'Sign Up',
              onPressed: () {
                Navigator.pushNamed(context, '/otpverification');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
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
                    "Sign in",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
