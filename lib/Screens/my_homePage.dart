import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/Screens/bottom_nav_bar.dart';
import 'package:travel_app/Widget/add_space.dart';
import 'package:travel_app/Widget/text_widgets.dart';
import 'package:travel_app/data/data.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen>
    with TickerProviderStateMixin {
  late AnimationController _imagecontroller;
  late AnimationController _text1Controller;
  late AnimationController _text2Controller;
  late AnimationController _buttonController;

  @override
  void initState() {
    super.initState();
    _imagecontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _text1Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _text2Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _buttonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    200.milliseconds.delay().then(
          (value) => _imagecontroller.forward(),
        );
    250.milliseconds.delay().then(
          (value) => _text1Controller.forward(),
        );
    300.milliseconds.delay().then(
          (value) => _text2Controller.forward(),
        );
    350.milliseconds.delay().then(
          (value) => _buttonController.forward(),
        );
  }

  @override
  void dispose() {
    super.dispose();
    _imagecontroller.dispose();
    _text1Controller.dispose();
    _text2Controller.dispose();
    _buttonController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AddCustomSpace(width: 0, height: 100.h),
          FadeTransition(
            opacity: _imagecontroller,
            child: Container(
              height: 400.h,
              width: 500.w,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(CustomAssets.oldman))),
            ),
          ),
          AddCustomSpace(width: 0, height: 50.h),
          ScaleTransition(
            scale: _text1Controller,
            child: CustomText(
                text: "k",
                textStyle: CustomTextStyle.khighmidTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
          AddCustomSpace(width: 0, height: 16.h),
          SlideTransition(
            position: Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.0))
                .animate(_text2Controller),
            child: CustomText(
                text: 'Find a place for Travel , compaign, hiking, relex',
                textStyle: CustomTextStyle.ksearchTextStyle,
                color: CustomColor.klightgrey,
                fontWeight: CustomFontWeight.kThinFontWeight),
          ),
          AddCustomSpace(width: 0, height: 14.h),
          SlideTransition(
            position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
                .animate(_text2Controller),
            child: CustomText(
                text: 'Relex and Enjoy your trip',
                textStyle: CustomTextStyle.ksearchTextStyle,
                color: CustomColor.klightgrey,
                fontWeight: CustomFontWeight.kThinFontWeight),
          ),
          AddCustomSpace(width: 0, height: 60.h),
          ScaleTransition(
            scale: _buttonController,
            child: SizedBox(
              height: 60.h,
              width: 300.w,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const NavigationBarScreen());
                  },
                  child: CustomText(
                      text: "Next",
                      textStyle: CustomTextStyle.ktextTextStyle,
                      color: CustomColor.kwhite,
                      fontWeight: CustomFontWeight.kMediumFontWeight)),
            ),
          )
        ],
      ),
    );
  }
}
