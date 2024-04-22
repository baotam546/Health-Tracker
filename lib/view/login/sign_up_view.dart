import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_tracker/common/color_extension.dart';
import 'package:health_tracker/common_widget/rounded_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: Container(
          width: media.width,
          height: media.height,
          decoration: BoxDecoration(
            color: TColor.white,
            // color: TColor.black,
          ),
          child: Column(
            // alignment: Alignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const Spacer(),
              Image.asset(
                "assets/images/health_tracker_logo.png",
                width: media.width,
                height: 350,
                fit: BoxFit.fitWidth,
              ),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0, bottom: 15),
                    child: SizedBox(
                      width: 300, // Adjust width as needed
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "User Name",
                            contentPadding: EdgeInsets.only(
                              top: 25,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0, bottom: 15),
                    child: SizedBox(
                      width: 300, // Adjust width as needed
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Phone Number",
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0, bottom: 15),
                    child: SizedBox(
                      width: 300, // Adjust width as needed
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0, bottom: 15),
                    child: SizedBox(
                      width: 300, // Adjust width as needed
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    ),
                  ),
                ],
              ),

              SafeArea(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45,
                      vertical: 0,
                    ),
                    child: RoundedButton(
                      title: "Sign Up",
                      onPressed: () {
                        print("to welcome login screen");
                      },
                    )),
              ),

              Padding(
                padding:
                    const EdgeInsets.only(top: 40.0, left: 100, right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Google");
                      },
                      child: Container(
                        // color: Colors.blue,
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          "assets/icons/Google_icon.svg",
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Facebook");
                      },
                      child: Container(
                        // color: Colors.blue,
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          "assets/icons/Facebook_icon.svg",
                          height: 40,
                          width: 40,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
