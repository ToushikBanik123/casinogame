import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game01/Screens/SixteenCards/SixteenCardsGameUi.dart';

import '../../Utils/Login/CustomRegistrationDialog.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Images/LoginBackgroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 660.sp,
                    width: 840.sp,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Assets/Images/KheloJetoText.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 1080.sp,
                width: 504.sp,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white30,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //MemberLoginText
                        Container(
                          height: 73.sp,
                          width: 404.sp,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Assets/Images/MemberLoginText.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(height: 48.sp),
                        Center(
                          child: Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.sp),
                        SizedBox(
                          height: 60.sp,
                          width: 450.sp,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 5.sp,
                                horizontal: 20.sp,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 36.sp),
                        Center(
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.sp),
                        SizedBox(
                          height: 60.sp,
                          width: 450.sp,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 5.sp,
                                horizontal: 20.sp,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(height: 10.h),
                        // SizedBox(height: 20.h),
                        // SizedBox(
                        //   height: 40.h,
                        //   child: ElevatedButton(
                        //     onPressed: () async {
                        //       showDialog(
                        //         context: context,
                        //         builder: (context) => Dialog(
                        //           backgroundColor: Colors.transparent,
                        //           child: Container(
                        //             height: 350.h,
                        //             width: 600.w,
                        //             decoration: BoxDecoration(
                        //               image: DecorationImage(
                        //                 image: AssetImage('Assets/Images/popup.png'),
                        //                 fit: BoxFit.cover,
                        //               ),
                        //               borderRadius: BorderRadius.circular(20.r),
                        //             ),
                        //             child: Column(
                        //               mainAxisAlignment: MainAxisAlignment.center,
                        //               crossAxisAlignment: CrossAxisAlignment.center,
                        //               children: [
                        //                 SizedBox(
                        //                   width: 470.w,
                        //                   child: Column(
                        //                     children: [
                        //                       Row(
                        //                         mainAxisAlignment: MainAxisAlignment.start,
                        //                         children: [
                        //                           Text(
                        //                             'Register and Play for Free',
                        //                             style: TextStyle(
                        //                               fontSize: 20.sp,
                        //                               fontWeight: FontWeight.bold,
                        //                               color: Colors.black,
                        //                             ),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                       SizedBox(height: 15.h),
                        //                       Row(
                        //                         mainAxisAlignment: MainAxisAlignment.start,
                        //                         children: [
                        //                           Icon(Icons.star, color: Colors.black),
                        //                           SizedBox(width: 10.w),
                        //                           Text(
                        //                             'Great prices and gives to be own on surprise competition',
                        //                             style: TextStyle(color: Colors.black, fontSize: 13.sp),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                       SizedBox(height: 5.h),
                        //                       Row(
                        //                         mainAxisAlignment: MainAxisAlignment.start,
                        //                         children: [
                        //                           Icon(Icons.star, color: Colors.black),
                        //                           SizedBox(width: 10.w),
                        //                           Text(
                        //                             'No deposit any charges required to play on the site',
                        //                             style: TextStyle(color: Colors.black, fontSize: 13.sp),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                       SizedBox(height: 5.h),
                        //                       Row(
                        //                         mainAxisAlignment: MainAxisAlignment.start,
                        //                         children: [
                        //                           Icon(Icons.star, color: Colors.black),
                        //                           SizedBox(width: 10.w),
                        //                           Text(
                        //                             'On redemption cash winning',
                        //                             style: TextStyle(color: Colors.black, fontSize: 13.sp),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                       SizedBox(height: 5.h),
                        //                       Row(
                        //                         mainAxisAlignment: MainAxisAlignment.start,
                        //                         children: [
                        //                           Icon(Icons.star, color: Colors.black),
                        //                           SizedBox(width: 10.w),
                        //                           Text(
                        //                             'Get 100 Free Chips on Every Login',
                        //                             style: TextStyle(color: Colors.black, fontSize: 13.sp),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                       SizedBox(height: 20.h),
                        //                     ],
                        //                   ),
                        //                 ),
                        //                 SizedBox(
                        //                   width: 470.w,
                        //                   child: ElevatedButton(
                        //                     onPressed: () {
                        //                       Navigator.push(
                        //                         context,
                        //                         MaterialPageRoute(
                        //                             builder: (context) => SixteenCardsGameUi()),
                        //                       );
                        //                     },
                        //                     style: ElevatedButton.styleFrom(
                        //                       primary: Colors.white,
                        //                       onPrimary: Colors.white,
                        //                       shape: RoundedRectangleBorder(
                        //                         borderRadius: BorderRadius.circular(30.r),
                        //                       ),
                        //                     ),
                        //                     child: Row(
                        //                       mainAxisSize: MainAxisSize.min,
                        //                       children: [
                        //                         Text(
                        //                           'Let’s go →',
                        //                           style: TextStyle(color: Colors.red),
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       );
                        //     },
                        //     child: Text('LOGIN'),
                        //     style: ElevatedButton.styleFrom(
                        //       primary: Color(0XFFE5B80B),
                        //       onPrimary: Colors.white,
                        //       minimumSize: Size(double.infinity, 50.h),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 48.sp),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SixteenCardsGameUi(),
                              ),
                            );
                          },
                          child: Container(
                            height: 60.sp,
                            width: 450.sp,
                            decoration: BoxDecoration(
                              color: const Color(0XFFE5B80B),
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            alignment: Alignment.center,
                            child: Text("LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.sp),
                        GestureDetector(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (context) => CustomRegistrationDialog(),
                            );
                          },
                          child: Container(
                            height: 60.sp,
                            width: 450.sp,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            alignment: Alignment.center,
                            child: Text("REGISTER",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
