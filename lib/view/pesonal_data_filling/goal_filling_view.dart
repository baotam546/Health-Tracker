import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/common_widget/personal_data_appbar.dart';
import 'package:health_tracker/common_widget/personal_data_navigation.dart';
import 'package:health_tracker/view/pesonal_data_filling/activity_filling_view.dart';

class GoalSelection extends StatefulWidget {
  const GoalSelection({super.key});

  @override
  State<GoalSelection> createState() => _GoalSelectionState();
}

class _GoalSelectionState extends State<GoalSelection> {
  int selectedHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const PersonalDataAppbar(
            titleText: "What’s your goal?",
            subtitleText: "This helps us create your personalized plan",
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Theme(
                  data: ThemeData(brightness: Brightness.light),
                  child: CupertinoPicker(
                    magnification: 1.4,
                    diameterRatio: 1,
                    itemExtent: 70,
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        // You would update your selected item logic here
                      });
                    },
                    children: const [
                      Center(
                          child: Text('Gain weight', style: TextStyle(fontSize: 20))),
                      Center(
                          child: Text('Get fitter', style: TextStyle(fontSize: 20))),
                      Center(
                          child: Text('Learn the basic', style: TextStyle(fontSize: 20))),
                    ],
                  ),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                          color: Colors.lightGreen,
                          thickness: 3,
                          endIndent: 100,
                          indent: 100),
                      SizedBox(height: 40), // Match the itemExtent
                      Divider(
                          color: Colors.lightGreen,
                          thickness: 3,
                          endIndent: 100,
                          indent: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const PersonalDataNavigation(nextPage: ActivitySelection())
        ],
      ),
    );
  }
}
