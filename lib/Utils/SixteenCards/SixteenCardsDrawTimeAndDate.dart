import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../Provider/SixteenCardProvider.dart';


class SixteenCardsDrawTimeAndDate extends StatelessWidget {
  const SixteenCardsDrawTimeAndDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SixteenCardProvider>(
        builder: (context, SixteenCardProvider, child) {
          return Container(
            height: 74.sp,
            width: 350.sp,
            decoration: BoxDecoration(
              border:
              Border.all(color: Colors.white, width: 2.sp),
              borderRadius: BorderRadius.circular(8.sp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Draw Time",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(SixteenCardProvider.currentDate,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(SixteenCardProvider.currentDate,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}