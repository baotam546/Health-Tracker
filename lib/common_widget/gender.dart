import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const GenderWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80,
      backgroundColor: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 70, color: Colors.white),
          SizedBox(height: 8),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
