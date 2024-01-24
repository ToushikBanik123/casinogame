import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../Provider/SixteenCardProvider.dart';

class SixteenCardsGamePlayWin extends StatelessWidget {
  const SixteenCardsGamePlayWin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SixteenCardProvider>(builder: (context,sixteenCardProvider,child){
      return Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image(
                  height: 50.sp,
                  width: 200.sp,
                  image: const AssetImage(
                      "Assets/SixteenCards/SixteenCardsPlayTile.png"),
                ),
              ),
              Positioned(
                  right: 20.sp,
                  child: Text(sixteenCardProvider.totalBetAmount.toString(),
                    style: TextStyle(color: Colors.white,
                      fontSize: 25.sp,
                    ),
                  ))
            ],
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image(
                  height: 50.sp,
                  width: 200.sp,
                  image: const AssetImage(
                      "Assets/SixteenCards/SixteenCardsWinTile.png"),
                ),
              ),
              Positioned(
                  right: 20.sp,
                  child: Text(sixteenCardProvider.totalBetAmount.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                    ),
                  ))
            ],
          ),
        ],
      );
    });
  }
}