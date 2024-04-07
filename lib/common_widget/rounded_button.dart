import 'package:flutter/material.dart';
import 'package:health_tracker/common/color_extension.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundedButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: TColor.primaryColor,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      minWidth: double.maxFinite,
      child: Text(
        title,
        style: TextStyle(
            color: TColor.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
