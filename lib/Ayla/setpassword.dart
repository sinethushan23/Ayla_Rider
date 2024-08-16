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
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 20,
                              color: Color.fromARGB(255, 189, 15, 15),
                              style: BorderStyle.solid)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                //text form
                Container(
                  width: 350,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Confirm your password',
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
                ),

                // register button
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/otpverification');
                  },
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: Center(
                      child: Text('Register'),
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
