import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game01/Provider/AppProvider.dart';
import 'package:game01/Screens/SixteenCards/SixteenCardsGameUi.dart';
import 'package:provider/provider.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                AssetImage('Assets/Images/HomePageBackGround.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeUiAppBar(),
              Row(
                children: [
                  SizedBox(width: 135.sp,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SixteenCardsGameUi(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0XFFedc762),
                          radius: 100.sp,
                          backgroundImage: const AssetImage('Assets/Images/16cards.png'),
                        ),
                        SizedBox(height: 25.sp),
                        Text(
                          '16 Cards',
                          style: TextStyle(fontSize: 40.sp, color: Color(0XFFedc762)),
                        ),
                        SizedBox(height: 43.sp),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}


class HomeUiAppBar extends StatelessWidget {
  const HomeUiAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.sp,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFB20303),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // GestureDetector(
          //   onTap: (){
          //     Navigator.pop(context);
          //   },
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 50.sp),
          //     child: Image(
          //       height: 53.sp,
          //       width: 146.sp,
          //       image: const AssetImage('Assets/SixteenCards/SixteenCardsBack.png'),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // SizedBox(width: 16.sp,),
          Row(
            children: [
              Consumer<AppProvider>(builder: (context,provider,child){
                return Stack(
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
                      top: 20.sp,
                      child: Text("100",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.sp,
                        ),
                      ),)
                  ],
                );
              }),
              GestureDetector(
                onTap: (){
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.sp),
                  child: Image(
                    height: 53.sp,
                    width: 223.sp,
                    image: const AssetImage('Assets/Images/NotificationButton.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.sp,),
            ],
          ),
        ],
      ),
    );
  }
}
