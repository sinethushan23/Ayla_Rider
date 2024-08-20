import 'package:flutter/material.dart';

class text_form extends StatelessWidget {
  final double formwidth;
  final double fontsize;
  final String labeltext;
  const text_form({
    super.key,
    required this.formwidth,
    required this.fontsize,
    required this.labeltext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: formwidth,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: labeltext,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: fontsize,
                      color: Color.fromARGB(255, 189, 15, 15),
                      style: BorderStyle.solid)),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'error';
              }
              return null;
            },
          ),
        ),
        SizedBox(
          height: 18,
        ),
        //text form
      ],
    );
  }
}
