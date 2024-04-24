import 'package:flutter/material.dart';
import 'package:health_tracker/common_widget/rounded_button.dart'; 

class PersonalDataNavigation extends StatelessWidget {
  final Widget nextPage;

  const PersonalDataNavigation({Key? key, required this.nextPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 80, bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back, size: 30, color: Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const CircleBorder(), 
                padding: const EdgeInsets.all(10)
              ),
            ),
          ),
        ),
        SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 80, right: 15, bottom: 20),
            child: RoundedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => nextPage, 
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      var begin = const Offset(1.0, 0.0); 
                      var end = Offset.zero;
                      var curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              title: 'Next',
            ),
          ),
        ),
      ],
    );
  }
}