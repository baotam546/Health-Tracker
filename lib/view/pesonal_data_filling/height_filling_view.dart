import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/common_widget/personal_data_appbar.dart';
import 'package:health_tracker/common_widget/personal_data_navigation.dart';
import 'package:health_tracker/view/pesonal_data_filling/goal_filling_view.dart';

class HeightSelection extends StatefulWidget {
  const HeightSelection({super.key});

  @override
  State<HeightSelection> createState() => _HeightSelectionState();
}

class _HeightSelectionState extends State<HeightSelection> {
  int selectedHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const PersonalDataAppbar(
            titleText: "What’s your height?",
            subtitleText: "This helps us create your personalized plan",
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Theme(
                  data: ThemeData(brightness: Brightness.light),
                  child: CupertinoPicker(
                    magnification: 1.7,
                    diameterRatio: 2,
                    itemExtent: 50,
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        selectedHeight = 140 + value;
                      });
                    },
                    scrollController: FixedExtentScrollController(
                        initialItem: selectedHeight - 140), // Start at 20
                    children: List<Widget>.generate(
                      60, // 80 - 15 + 1 = 66 items
                      (int index) => Center(
                        child: Text(
                          '${140 + index}',
                          style: const TextStyle(fontSize: 28),
                        ),
                      ),
                    ),
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
                          endIndent: 150,
                          indent: 150),
                      SizedBox(height: 40), // Match the itemExtent
                      Divider(
                          color: Colors.lightGreen,
                          thickness: 3,
                          endIndent: 150,
                          indent: 150),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const PersonalDataNavigation(nextPage: GoalSelection())
        ],
      ),
    );
  }
}
