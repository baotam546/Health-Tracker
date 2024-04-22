import 'package:flutter/material.dart';
import 'package:health_tracker/common/color_extension.dart';
import 'package:health_tracker/common_widget/on_boarding_page.dart';
import 'package:health_tracker/view/login/sign_up_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectedPage = 0;
  PageController controller = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      selectedPage = controller.page?.round() ?? 0;

      setState(() {});
    });
  }

  List pageList = [
    {
      "title": "Track your goal",
      "description":
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/images/on_1.png"
    },
    {
      "title": "Get burn",
      "description":
          "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/on_2.png"
    },
    {
      "title": "Eat well",
      "description":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/images/on_3.png"
    },
    {
      "title": "AI assistant",
      "description":
          "An AI assistant serves as a personalized virtual companion, offering tailored guidance and support to users on their wellness journey",
      "image": "assets/images/on_4.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TColor.white,
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView.builder(
                controller: controller,
                itemCount: pageList.length,
                itemBuilder: (context, index) {
                  var pObj = pageList[index] as Map? ?? {};
                  return OnBoardingPage(pObj: pObj);
                }),
            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: CircularProgressIndicator(
                      color: TColor.primaryColor,
                      value: (selectedPage + 1) / pageList.length,
                      strokeWidth: 2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: TColor.primaryColor,
                        borderRadius: BorderRadius.circular(35)),
                    child: IconButton(
                      icon: Icon(
                        Icons.navigate_next,
                        color: TColor.white,
                        size: 35,
                      ),
                      onPressed: () {
                        if (selectedPage < pageList.length) {
                          selectedPage = selectedPage + 1;
                          controller.animateToPage(selectedPage,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                          // controller.jumpToPage(selectedPage);
                          // Open Welcome Screen
                        } else  {
                          // Open Welcome Screen
                          // print("Open Welcome Screen");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpView()));
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
