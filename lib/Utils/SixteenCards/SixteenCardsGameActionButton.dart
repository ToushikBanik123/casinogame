import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../Provider/SixteenCardProvider.dart';


class SixteenCardsGameActionButton extends StatelessWidget {
  const SixteenCardsGameActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SixteenCardProvider>(builder: (context,sixteenCardProvider,child){
      return Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  sixteenCardProvider.setAllBetAmount(0);
                },
                child: Image(
                  height: 50.sp,
                  width: 200.sp,
                  image: const AssetImage("Assets/SixteenCards/SixteenCardsClearButton.png"),
                ),
              ),
              GestureDetector(
                onTap: (){
                  sixteenCardProvider.placeBetAmount();
                },
                child: Image(
                  height: 50.sp,
                  width: 200.sp,
                  image: const AssetImage("Assets/SixteenCards/SixteenCardsBetButton.png"),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.sp,),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  sixteenCardProvider.doubleBetAmount();
                },
                child: Image(
                  height: 50.sp,
                  width: 200.sp,
                  image: const AssetImage("Assets/SixteenCards/SixteenCardsDoubleButton.png"),
                ),
              ),
              GestureDetector(
                onTap: (){
                  sixteenCardProvider.setRepeatBet();
                },
                child: Image(
                  height: 50.sp,
                  width: 200.sp,
                  image: const AssetImage("Assets/SixteenCards/SixteenCardsRepeatButton.png"),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}