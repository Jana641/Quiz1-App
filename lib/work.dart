import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() {
    return _WorkState();
  }
}

class _WorkState extends State<Work> {
  String userChoice = ' ❓';
  int correctCount = 0;
  int wrongCount = 0;
  void onYesPress() {
    setState(() {
      userChoice = '✅ Correct';
      correctCount++;
    });
  }

  void onNoPress() {
    setState(() {
      userChoice = '❌ Wrong';
      wrongCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Is Flutter developed by Google?')),
          SizedBox(height: 20),
          ElevatedButton(onPressed: onYesPress, child: Text('A:Yes')),
          SizedBox(height: 20),
          ElevatedButton(onPressed: onNoPress, child: Text('B:No')),
          SizedBox(height: 20),

          Text('${userChoice}'),
          SizedBox(height: 20),

          Text('Correct: ${correctCount} '),
          Text('Correct:${wrongCount} '),
          SizedBox(height: 30),

          ElevatedButton(
            onPressed: () {
              setState(() {
                userChoice = ' ❓';
                correctCount = 0;
                wrongCount = 0;
              });
            },
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}
