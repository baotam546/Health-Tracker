import 'package:flutter/material.dart';
import 'package:health_tracker/common/color_extension.dart';
import 'package:health_tracker/common_widget/gender.dart';
import 'package:health_tracker/common_widget/personal_data_appbar.dart';
import 'package:health_tracker/common_widget/rounded_button.dart';
import 'package:health_tracker/view/pesonal_data_filling/age_filling_view.dart';

class GenderSelectionPage extends StatefulWidget {
  const GenderSelectionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenderSelectionPageState createState() => _GenderSelectionPageState();
}

class _GenderSelectionPageState extends State<GenderSelectionPage> {
  String gender = 'male'; // Default or saved user choice

  void selectGender(String selectedGender) {
    setState(() {
      gender = selectedGender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const PersonalDataAppbar(
              titleText: "Tell us about yourself!",
              subtitleText:
                  "To give you a better experience we need to know your gender"),
          const Spacer(),
          GestureDetector(
            onTap: () => selectGender('male'),
            child: GenderWidget(
              icon: Icons.male,
              text: "Male",
              color: gender == 'male' ? TColor.primaryColor : TColor.gray,
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => selectGender('female'),
            child: GenderWidget(
              icon: Icons.female,
              text: 'Female',
              color: gender == 'female' ? TColor.primaryColor : TColor.gray,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 270, right: 20, bottom: 20),
            child: RoundedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const AgeSelection(), // Replace NextPage with the actual class name of your next page
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0,
                            0.0); // Begin transition from right side of the screen
                        var end = Offset.zero;
                        var curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ));
              },
              title: 'Next',
            ),
          ),
        ],
      ),
    );
  }
}
