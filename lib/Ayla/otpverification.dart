import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 119, 61,
                61), // Change text color to black for all TextButtons
          ),
        ),
      ),
      home: otpverification(),
    ),
  );
}

class otpverification extends StatefulWidget {
  const otpverification({super.key});

  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<otpverification> {
  final _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Phone Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                Text(
                  "Enter your OTP code",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Form(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextField(
                                  focusNode: _focusNodes[0],
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 220, 216, 255),
                                              width: 2,
                                              style: BorderStyle.solid))),
                                  onSubmitted: (_) {
                                    _focusNodes[1].requestFocus();
                                  },
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextField(
                                  focusNode: _focusNodes[1],
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2,
                                              style: BorderStyle.solid))),
                                  onSubmitted: (_) {
                                    _focusNodes[2].requestFocus();
                                  },
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextField(
                                  focusNode: _focusNodes[2],
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2,
                                              style: BorderStyle.solid))),
                                  onSubmitted: (_) {
                                    _focusNodes[3].requestFocus();
                                  },
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextField(
                                  focusNode: _focusNodes[3],
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 2,
                                              style: BorderStyle.solid))),
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextField(
                                  focusNode: _focusNodes[3],
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 2,
                                              style: BorderStyle.solid))),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8), // Space between fields and text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Didn't receive the code? "),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/otpverification');
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  child: Text(
                                    "Resend again",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/setpassword');
              },
              child: SizedBox(
                width: 300,
                height: 50,
                child: Center(
                  child: Text('Verify'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
