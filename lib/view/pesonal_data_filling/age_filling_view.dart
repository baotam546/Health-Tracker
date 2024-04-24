import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_tracker/common_widget/personal_data_appbar.dart';
import 'package:health_tracker/common_widget/personal_data_navigation.dart';
import 'package:health_tracker/common_widget/rounded_button.dart';
import 'package:health_tracker/view/pesonal_data_filling/weight_filling_view.dart';

class AgeSelection extends StatefulWidget {
  const AgeSelection({super.key});

  @override
  State<AgeSelection> createState() => _AgeSelectionState();
}

class _AgeSelectionState extends State<AgeSelection> {
  int selectedAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PersonalDataAppbar(
            titleText: "What’s your Age?",
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
                        selectedAge = 15 + value;
                      });
                    },
                    scrollController: FixedExtentScrollController(
                        initialItem: selectedAge -15), // Start at 20
                    children: List<Widget>.generate(
                      66, // 80 - 15 + 1 = 66 items
                      (int index) => Center(
                        child: Text(
                          '${15 + index}',
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
                          color: Colors.black,
                          thickness: 3,
                          endIndent: 160,
                          indent: 160),
                      SizedBox(height: 40), // Match the itemExtent
                      Divider(
                          color: Colors.black,
                          thickness: 3,
                          endIndent: 160,
                          indent: 160),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const PersonalDataNavigation(nextPage: WeightSelection())
        ],
      ),
    );
  }
}
