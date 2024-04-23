import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_tracker/common/color_extension.dart';
import 'package:health_tracker/common_widget/rounded_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: media.height * 0.1),
              Image.asset(
                "assets/images/health_tracker_logo.png",
                width: media.width * 1,
                height: media.height * 0.4,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: media.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: media.width * 0.1),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User Name",
                    contentPadding: EdgeInsets.only(top: media.height * 0.02),
                  ),
                ),
              ),
              SizedBox(height: media.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: media.width * 0.1),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    contentPadding: EdgeInsets.only(top: media.height * 0.02),
                  ),
                ),
              ),
              SizedBox(height: media.height * 0.04),
              Container(
                padding: EdgeInsets.symmetric(horizontal: media.width * 0.2),
                child: RoundedButton(
                  title: "Login",
                  onPressed: () {
                    print("to welcome login screen");
                  },
                ),
              ),
              SizedBox(height: media.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: media.width * 0.02),
                  Container(
                    width: media.width * 0.25,
                    height: media.height * 0.05,
                    child: RoundedButton(
                      title: "Sign Up",
                      onPressed: () {
                        print("to welcome login screen");
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: media.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Forgot your password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: media.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Google");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: media.height * 0.05,
                      width: media.height * 0.05,
                      child: SvgPicture.asset(
                        "assets/icons/Google_icon.svg",
                        height: media.height * 0.05,
                        width: media.height * 0.05,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Facebook");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: media.height * 0.05,
                      width: media.height * 0.05,
                      child: SvgPicture.asset(
                        "assets/icons/Facebook_icon.svg",
                        height: media.height * 0.05,
                        width: media.height * 0.05,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}