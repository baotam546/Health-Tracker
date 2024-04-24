import 'package:flutter/material.dart';
import 'package:health_tracker/common/color_extension.dart';

class PersonalDataAppbar extends StatelessWidget {
  final String titleText;
  final String subtitleText;

  const PersonalDataAppbar({
    super.key,
    required this.titleText,
    required this.subtitleText,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen size
    var screenSize = MediaQuery.of(context).size;

    // Calculate the height based on the screen size
    var containerHeight = screenSize.height * 0.23;
    var containerWeight = screenSize.width;
    // Calculate padding based on the screen size
    var horizontalPadding = screenSize.width * 0.1;
    var verticalPadding = screenSize.height * 0.02;

    // Adjust font size based on the screen size
    var titleFontSize = screenSize.width * 0.065;
    var subtitleFontSize = screenSize.width * 0.04;

    return Container(
      height: containerHeight,
      width: containerWeight,
      decoration: BoxDecoration(
        color: TColor.primaryColor, // Replace with your actual color
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: screenSize.height * 0.02),
            Text(
              titleText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Text(
              subtitleText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: subtitleFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
