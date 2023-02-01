import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/Screens/event_screen.dart';
import 'package:travel_app/Screens/titlescreen.dart';
import 'package:travel_app/data/themedata.dart';
import 'package:travel_app/Screens/my_homePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 840),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          defaultTransition: Transition.rightToLeft,
          debugShowCheckedModeBanner: false,
          title: 'Kaana Rider',
          theme: primaryTheme,
          home: child,
        );
      },
      child: const MyHomeScreen(),
    );
  }
}
