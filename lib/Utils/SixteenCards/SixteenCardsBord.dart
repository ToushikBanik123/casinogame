import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../Provider/SixteenCardProvider.dart';

class SixteenCardsBord extends StatelessWidget {
  const SixteenCardsBord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SixteenCardsBoardBackground
    return Center(
      child: Consumer<SixteenCardProvider>(builder: (context,provider,child){
        return Row(
          children: [
            Container(
              // height: 678.sp,
              height: 630.sp,
              width: 1059.sp,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/SixteenCards/SixteenCardsBoardBackground.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 630.sp,
                    width: 221.sp,
                    // color: Colors.black,
                    child: Column(
                      children: [
                        //AllAce.png
                        SizedBox(height: 100.sp,),
                        GestureDetector(
                          onTap: (){
                            provider.setRowPick(0);
                          },
                          child: Container(
                            height: 106.sp,
                            width: 154.sp,
                            margin: EdgeInsets.symmetric(vertical: 10.sp),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('Assets/SixteenCards/AllKing.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            provider.setRowPick(4);
                          },
                          child: Container(
                            height: 106.sp,
                            width: 154.sp,
                            margin: EdgeInsets.symmetric(vertical: 10.sp),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('Assets/SixteenCards/AllQueen.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            provider.setRowPick(8);
                          },
                          child: Container(
                            height: 106.sp,
                            width: 154.sp,
                            margin: EdgeInsets.symmetric(vertical: 10.sp),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('Assets/SixteenCards/AllJacks.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            provider.setRowPick(12);
                          },
                          child: Container(
                            height: 106.sp,
                            width: 154.sp,
                            margin: EdgeInsets.symmetric(vertical: 10.sp),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('Assets/SixteenCards/AllAce.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100.sp,
                        width: 728.sp,
                        margin: EdgeInsets.symmetric(vertical: 10.sp),
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                provider.setColumnPick(0);
                              },
                              child: Container(
                                height: 106.sp,
                                width: 154.sp,
                                margin: EdgeInsets.symmetric(horizontal: 10.sp),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/SixteenCards/AllHearts.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                provider.setColumnPick(1);
                              },
                              child: Container(
                                height: 106.sp,
                                width: 154.sp,
                                margin: EdgeInsets.symmetric(horizontal: 10.sp),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/SixteenCards/AllSpades.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                provider.setColumnPick(2);
                              },
                              child: Container(
                                height: 106.sp,
                                width: 154.sp,
                                margin: EdgeInsets.symmetric(horizontal: 10.sp),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/SixteenCards/AllDiamonds.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                provider.setColumnPick(3);
                              },
                              child: Container(
                                height: 106.sp,
                                width: 154.sp,
                                margin: EdgeInsets.symmetric(horizontal: 10.sp),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/SixteenCards/AllClubes.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 500.sp,
                        width: 728.sp,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 10.sp,
                            childAspectRatio: 1.6,
                          ),
                          itemCount: 16,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: (){
                                provider.setCoinValueInIndex(index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/SixteenCards/SixteenCards$index.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Container(
                                  height: 80.sp,
                                  width: 80.sp,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: (provider.betAmount[index] > 0) ? const DecorationImage(
                                      image: AssetImage("Assets/GameCoins/GameCoinBackground5.png"),
                                      fit: BoxFit.cover,
                                    ) : null,
                                  ),
                                  alignment: Alignment.center,
                                  child: (provider.betAmount[index] > 0) ? Text(provider.betAmount[index].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.sp,
                                    ),
                                  ) : null,
                                ),

                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.sp,),
            const RandomBetTile(),
          ],
        );
      },),
    );
  }
}



class RandomBetTile extends StatelessWidget {
  const RandomBetTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SixteenCardProvider>(builder: (context,sixteenCardProvider,child){
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setRandomPick(4);
            },
            child: Container(
              height: 80.sp,
              width: 80.sp,
              margin: EdgeInsets.symmetric(vertical: 10.sp),
              decoration: BoxDecoration(
                color: Color(0xFFFFD161),
                borderRadius: BorderRadius.circular(5.sp),
                border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              child: Text("4",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setRandomPick(6);
            },
            child: Container(
              height: 80.sp,
              width: 80.sp,
              margin: EdgeInsets.symmetric(vertical: 10.sp),
              decoration: BoxDecoration(
                color: Color(0xFFFFD161),
                borderRadius: BorderRadius.circular(5.sp),
                border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              child: Text("6",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setRandomPick(8);
            },
            child: Container(
              height: 80.sp,
              width: 80.sp,
              margin: EdgeInsets.symmetric(vertical: 10.sp),
              decoration: BoxDecoration(
                color: Color(0xFFFFD161),
                borderRadius: BorderRadius.circular(5.sp),
                border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              child: Text("8",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setRandomPick(10);
            },
            child: Container(
              height: 80.sp,
              width: 80.sp,
              margin: EdgeInsets.symmetric(vertical: 10.sp),
              decoration: BoxDecoration(
                color: Color(0xFFFFD161),
                borderRadius: BorderRadius.circular(5.sp),
                border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.center,
              child: Text("10",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}