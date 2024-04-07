import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_tracker/common/color_extension.dart';
import 'package:health_tracker/common_widget/rounded_button.dart';
import 'package:health_tracker/view/on_boarding/on_boarding_view.dart';

enum RoundButtonType {
  filled,
  outlined,
  text,
}

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    // Replace "assets/images/your_image.png" with the actual path to your image

    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        width: media.width,
        height: media.height,
        decoration: BoxDecoration(
          color: TColor.white,
        ),
        child: Column(
          // alignment: Alignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/health_tracker_logo.png",
              width: media.width,
              fit: BoxFit.fitWidth,
            ),
            const Spacer(),
            SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 30,
                  ),
                  child: RoundedButton(
                    title: "Get Started",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoardingView()));
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
