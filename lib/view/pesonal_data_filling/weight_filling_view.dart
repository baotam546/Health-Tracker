import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_tracker/common_widget/personal_data_appbar.dart';
import 'package:health_tracker/common_widget/personal_data_navigation.dart';
import 'package:health_tracker/view/pesonal_data_filling/height_filling_view.dart';

class WeightSelection extends StatefulWidget {
  const WeightSelection({super.key});

  @override
  State<WeightSelection> createState() => _WeightSelectionState();
}

class _WeightSelectionState extends State<WeightSelection> {
  int selectedWeight = 21;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PersonalDataAppbar(
            titleText: "What’s your weight?",
            subtitleText: "You can always change this later",
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 85,
                    child: TextField(
                      style: TextStyle(fontSize: 40),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                        top: 25,
                      )),
                    ),
                  ),
                  SizedBox(
                      child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      "Kg",
                      style: TextStyle(fontSize: 40),
                    ),
                  ))
                ],
              ),
            ),
          ),
          PersonalDataNavigation(nextPage: HeightSelection()),
        ],
      ),
    );
  }
}
