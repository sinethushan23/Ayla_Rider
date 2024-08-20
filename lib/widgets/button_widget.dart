import 'package:flutter/material.dart';

class button_widget extends StatelessWidget {
  // Changed class name to follow naming conventions
  final Color backgroundColor;
  final Color foregroundColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double buttonWidth;
  final double buttonHeight;
  final String buttonText;
  final VoidCallback onPressed;

  const button_widget({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.fontSize,
    required this.fontWeight,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor, // Text color
        backgroundColor: backgroundColor, // Background color
        textStyle: TextStyle(
          fontSize: fontSize, // Font size
          fontWeight: fontWeight, // Font weight
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Square corners
        ),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: buttonWidth, // Button width
        height: buttonHeight, // Button height
        child: Center(
          child: Text(buttonText), // Button text
        ),
      ),
    );
  }
}
