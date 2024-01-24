import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SixteenCardsSpinningWheel extends StatefulWidget {
  const SixteenCardsSpinningWheel({Key? key}) : super(key: key);

  @override
  State<SixteenCardsSpinningWheel> createState() => _SixteenCardsSpinningWheelState();
}

class _SixteenCardsSpinningWheelState extends State<SixteenCardsSpinningWheel> {
  // Replace this with your actual API call to get the result
  int _apiResult = 11;
  int spinCount = 10;
  double _sizeMultiplier = 2;

  double _turnsRow = 0.0;
  double _turnsColumn = 0.0;
  Random random = Random();

  // Your card distribution
  List<String> cards = [
    "King of Spades ♠", "King of Clubs ♣", "King of Diamonds ♦", "King of Hearts ♥",
    "Queen of Spades ♠", "Queen of Clubs ♣", "Queen of Diamonds ♦", "Queen of Hearts ♥",
    "Jack of Spades ♠", "Jack of Clubs ♣", "Jack of Diamonds ♦", "Jack of Hearts ♥",
    "Ace of Spades ♠", "Ace of Clubs ♣", "Ace of Diamonds ♦", "Ace of Hearts ♥"
  ];
  //SixteenCards0
  //Row list
  List<int> KingNumbers  = [0,4,8,12];
  List<int> AceNumbers  = [1,5,9,13];
  List<int> JackNumbers  = [2,6,10,14];
  List<int> QueenNumbers  = [3,7,11,15];

  // Function to handle the rotation based on the API result
  void rowTurnsRotateBasedOnApiResult(int apiResult) {
    if (apiResult >= 0 && apiResult <= 3) {
      _turnsRow = (KingNumbers[random.nextInt(3)] / 16.0);
    } else if (apiResult >= 4 && apiResult <= 7) {
      _turnsRow = QueenNumbers[random.nextInt(3)] / 16.0;
    } else if (apiResult >= 8 && apiResult <= 11) {
      _turnsRow = JackNumbers[random.nextInt(3)] / 16.0;
    } else if (apiResult >= 12 && apiResult <= 15) {
      _turnsRow = AceNumbers[random.nextInt(3)] / 16.0;
    }
    setState(() {
      _turnsRow = _turnsRow + spinCount;
      spinCount = spinCount * (-1);
      _apiResult = apiResult;
    });

  }


  //Colum List
  List<int> SpadesNumbers  = [0,4,8,12];
  List<int> HeartsNumbers  = [1,5,9,13];
  List<int> ClubsNumbers  = [2,6,10,14];
  List<int> DiamondsNumbers  = [3,7,11,15];
  void ColumnTurnsRotateBasedOnApiResult(int apiResult) {
    if (apiResult == 0 || apiResult == 4 || apiResult == 8 || apiResult == 12) {
      //Spades ♠
      _turnsColumn = SpadesNumbers[random.nextInt(3)] / 16.0;
    } else if (apiResult == 1 || apiResult == 5 || apiResult == 9 || apiResult == 13) {
      //Clubs ♣
      _turnsColumn = ClubsNumbers[random.nextInt(3)] / 16.0;
    } else if (apiResult == 2 || apiResult == 6 || apiResult == 10 || apiResult == 14) {
      //Diamonds ♦
      _turnsColumn = DiamondsNumbers[random.nextInt(3)] / 16.0;
    } else if (apiResult == 3 || apiResult == 7 || apiResult == 11 || apiResult == 15) {
      //Hearts ♥
      _turnsColumn = HeartsNumbers[random.nextInt(3)] / 16.0;
    }
    setState(() {
      _turnsColumn = _turnsColumn - spinCount;
    });
  }


  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer){
      int parsedInt = random.nextInt(15);
      rowTurnsRotateBasedOnApiResult(parsedInt);
      ColumnTurnsRotateBasedOnApiResult(parsedInt);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: (250*_sizeMultiplier).sp,
            width: (250*_sizeMultiplier).sp,
            decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage("Assets/SixteenCards/circleBackground.png"),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedRotation(
            turns: _turnsRow,
            duration: Duration(seconds: 1),
            child: Container(
              height: (300*_sizeMultiplier).sp,
              width: (300*_sizeMultiplier).sp,
              decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage("Assets/SixteenCards/largeRotatingCircle.png"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedRotation(
            turns: _turnsColumn,
            duration: Duration(seconds: 1),
            child: Container(
              height: (150*_sizeMultiplier).sp,
              width: (150*_sizeMultiplier).sp,
              decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage("Assets/SixteenCards/smallRotatingCircle.png"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: (90*_sizeMultiplier).sp,
            width: (90*_sizeMultiplier).sp,
            decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage("Assets/SixteenCards/inerTimerCircle.png"),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),
        //winIndicator
        Align(
          alignment: Alignment.center,
          child: Container(
            height: (65*_sizeMultiplier).sp,
            width: (65*_sizeMultiplier).sp,
            decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage("Assets/SixteenCards/winIndicator.png"),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),
      ],
    );
  }
}
