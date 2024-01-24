import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game01/Screens/Login/RegisterPage.dart';
import 'package:game01/Screens/SixteenCards/SixteenCardsGameUi.dart';

class CustomRegistrationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 551.sp,
        width: 1248.sp,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Images/popup.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(24.sp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(100.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Register and Play for Free',
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, color: Colors.black),
                      SizedBox(width: 10),
                      Text(
                        'Great prices and gives to be own on surprise competition',
                        style: TextStyle(color: Colors.black, fontSize: 32.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.sp),
                  // Add more rows as needed
                  SizedBox(height: 20.sp),
                ],
              ),
            ),
            SizedBox(
              height: 66.sp,
              width: 822.sp,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Let’s go →',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

