import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // var leftDiceButton=1;
  int randomise(){
  int l=Random().nextInt(6)+1;
  return l;
}
  int leftDiceButton = 1;
  int rightDiceButton = 1;
  Widget build(BuildContext context) {
    // Variables should be define in Build method in order to use hot reload
    // leftDiceButton = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    // if the random no. is not present in dice no. than dice will disapeer
                    // leftDiceButton = Random().nextInt(6) + 1;
                    //  // if both want to update
                    // rightDiceButton= Random().nextInt(6)+1;
                    leftDiceButton=randomise();
                    rightDiceButton=randomise();
                  });

                  // print('Left Button is pressed');
                  print(leftDiceButton);
                },
                child: Image.asset('images/dice$leftDiceButton.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    //......
                    // rightDiceButton = Random().nextInt(6) + 1;
                    // // if both want to update
                    // leftDiceButton= Random().nextInt(6)+1;
                    leftDiceButton=randomise();
                    rightDiceButton=randomise();
                  });

                  print('Right Button is Pressed');
                },
                child: Image(
                  image: AssetImage(
                    'images/dice$rightDiceButton.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

