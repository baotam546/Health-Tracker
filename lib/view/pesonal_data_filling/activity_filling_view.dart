import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/common_widget/personal_data_appbar.dart';
import 'package:health_tracker/common_widget/personal_data_navigation.dart';

class ActivitySelection extends StatefulWidget {
  const ActivitySelection({super.key});

  @override
  State<ActivitySelection> createState() => _ActivitySelectionState();
}

class _ActivitySelectionState extends State<ActivitySelection> {
  int selectedHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const PersonalDataAppbar(
            titleText: "Your regular physical activity level?",
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
                          child: Text('Rookie', style: TextStyle(fontSize: 20))),
                      Center(
                          child: Text('Intermediate', style: TextStyle(fontSize: 20))),
                      Center(
                          child: Text('True Beast', style: TextStyle(fontSize: 20))),
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
