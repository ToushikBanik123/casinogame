import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Provider/AppProvider.dart';
import 'Provider/SixteenCardProvider.dart';
import 'Screens/Login/LoginPage.dart';
import 'Screens/SixteenCards/SixteenCardsGameUi.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920,1080),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => AppProvider()),
            ChangeNotifierProvider(create: (_) => SixteenCardProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            // home: SixteenCardsGameUi(),
            home: LoginPage(),
          ),
        );
      },
    );
  }
}



