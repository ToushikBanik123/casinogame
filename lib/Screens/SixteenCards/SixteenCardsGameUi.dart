import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game01/Provider/SixteenCardProvider.dart';
import 'package:provider/provider.dart';

import '../../Utils/SixteenCards/CoinsBord.dart';
import '../../Utils/SixteenCards/SixteenCardsBord.dart';
import '../../Utils/SixteenCards/SixteenCardsDrawTimeAndDate.dart';
import '../../Utils/SixteenCards/SixteenCardsGameActionButton.dart';
import '../../Utils/SixteenCards/SixteenCardsGamePlayWin.dart';
import '../../Utils/SixteenCards/SixteenCardsSpinningWheel.dart';

class SixteenCardsGameUi extends StatelessWidget {
  const SixteenCardsGameUi({Key? key}) : super(key: key);
  //SixteenCardBackground
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 53.sp,
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Color(0XFF100227),
      //   title:,
      // ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('Assets/SixteenCards/SixteenCardBackground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //TODO: Impliment the SingleChild Schrolevew
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.sp,),
                SixteenCardsGameUiAppBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.sp, vertical: 10.sp),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SixteenCardsBord(),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.sp),
                              child: const SixteenCardsGamePlayWin(),
                            ),
                            const CoinsBord(),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.symmetric(
                        //       horizontal: 30.sp, vertical: 10.sp),
                        //   child: const SixteenCardsSpinningWheel(),
                        // ),
                        const SixteenCardsSpinningWheel(),
                        const SixteenCardsDrawTimeAndDate(),
                        Container(
                          height: 32.sp,
                        ),
                        const SixteenCardsGameActionButton(),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.sp,),
              ],
            ),
          )
        ],
      ),
    );
  }
}



class SixteenCardsGameUiAppBar extends StatelessWidget {
  const SixteenCardsGameUiAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.sp),
              child: Image(
                height: 53.sp,
                width: 146.sp,
                image: const AssetImage('Assets/SixteenCards/SixteenCardsBack.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 16.sp,),
              Image(
                height: 53.sp,
                width: 115.sp,
                image: const AssetImage('Assets/SixteenCards/SixteenCardsPrint.png'),
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16.sp,),
              Image(
                height: 53.sp,
                width: 97.sp,
                image: const AssetImage('Assets/SixteenCards/SixteenCardsAc.png'),
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16.sp,),
              Stack(
                children: [
                  Align(
                    child: Image(
                      height: 53.sp,
                      width: 375.sp,
                      image: const AssetImage('Assets/SixteenCards/SixteenCardsGameId.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 30.sp,
                    child: Text("500000000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                      ),
                    ),)
                ],
              ),
              SizedBox(width: 16.sp,),
              Stack(
                children: [
                  Align(
                    child: Image(
                      height: 53.sp,
                      width: 375.sp,
                      image: const AssetImage('Assets/SixteenCards/SixteenCardsBalance.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10.sp,
                    child: Text("500000000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                      ),
                    ),)
                ],
              ),
              SizedBox(width: 16.sp,),
              Image(
                height: 53.sp,
                width: 120.sp,
                image: const AssetImage('Assets/SixteenCards/SixteenCardsInfo.png'),
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16.sp,),
              Image(
                height: 53.sp,
                width: 166.sp,
                image: const AssetImage('Assets/SixteenCards/SixteenCardsCancel.png'),
                fit: BoxFit.cover,
              ),
              SizedBox(width: (16+32).sp,),
            ],
          ),
        ],
      ),
    );
  }
}
