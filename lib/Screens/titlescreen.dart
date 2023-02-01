import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app/Model/chatmodel.dart';
import 'package:travel_app/Widget/add_space.dart';
import 'package:travel_app/Widget/event_container.dart';
import 'package:travel_app/Widget/text_widgets.dart';
import 'package:travel_app/data/data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late AnimationController firsttextController;
  late AnimationController secondtextController;
  late AnimationController bellController;
  late AnimationController searchController;
  late AnimationController contController;
  late AnimationController contfirsttextController;
  late AnimationController cont2ndtextController;
  late AnimationController contbuttonController;
  late AnimationController contbagController;
  late AnimationController popularrowController;
  late AnimationController listviewController;
  @override
  void initState() {
    super.initState();
    firsttextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    secondtextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    bellController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    searchController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    contController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    contfirsttextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    cont2ndtextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    contbuttonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    contbagController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    popularrowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    listviewController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    200.milliseconds.delay().then(
          (value) => firsttextController.forward(),
        );
    250.milliseconds.delay().then(
          (value) => secondtextController.forward(),
        );
    300.milliseconds.delay().then(
          (value) => bellController.forward(),
        );
    350.milliseconds.delay().then(
          (value) => searchController.forward(),
        );
    400.milliseconds.delay().then(
          (value) => contController.forward(),
        );
    450.milliseconds.delay().then(
          (value) => contfirsttextController.forward(),
        );
    500.milliseconds.delay().then(
          (value) => cont2ndtextController.forward(),
        );
    550.milliseconds.delay().then(
          (value) => contbagController.forward(),
        );
    600.milliseconds.delay().then(
          (value) => popularrowController.forward(),
        );
    600.milliseconds.delay().then(
          (value) => listviewController.forward(),
        );
  }

  @override
  void dispose() {
    super.dispose();
    firsttextController.dispose();
    secondtextController.dispose();
    bellController.dispose();
    searchController.dispose();
    contController.dispose();
    contfirsttextController.dispose();
    cont2ndtextController.dispose();
    contbagController.dispose();
    contbuttonController.dispose();
    popularrowController.dispose();
    listviewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AddCustomSpace(width: 0, height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SlideTransition(
                      position: Tween<Offset>(
                              begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(firsttextController),
                      child: CustomText(
                          text: "Hi,Nanas 👋",
                          textStyle: CustomTextStyle.kmedTextStyle,
                          color: CustomColor.kblack.withOpacity(0.6),
                          fontWeight: CustomFontWeight.kExtraBoldFontWeight),
                    ),
                    AddCustomSpace(width: 0, height: 8.h),
                    SlideTransition(
                      position: Tween<Offset>(
                              begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(secondtextController),
                      child: CustomText(
                          text: "Let's Travel Now",
                          textStyle: CustomTextStyle.khighmidTextStyle,
                          color: CustomColor.kblack,
                          fontWeight: CustomFontWeight.kExtraBoldFontWeight),
                    ),
                  ],
                ),
                const Spacer(),
                ScaleTransition(
                  scale: bellController,
                  child: SizedBox(
                    height: 40.h,
                    width: 40.w,
                    //color: CustomColor.klightgrey,
                    child: Stack(children: [
                      Icon(
                        Icons.notifications_none,
                        size: 40.sp,
                        color: CustomColor.kblack,
                      ),
                      Positioned(
                        top: 6.h,
                        left: 22.w,
                        child: CircleAvatar(
                          radius: 5.r,
                          backgroundColor: CustomColor.kred,
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
          AddCustomSpace(width: 0, height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ScaleTransition(
              scale: searchController,
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 280.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      border: Border.all(color: CustomColor.klightgrey),
                      color: CustomColor.kwhite,
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                      //contentPadding: EdgeInsets.only(bottom: 1.h),
                      hintText: "Search Destinarion",
                      hintStyle: CustomTextStyle.ktextTextStyle
                          .copyWith(color: CustomColor.klightgrey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: CustomColor.kblack,
                        size: 20.sp,
                      ),
                      prefixIconColor: CustomColor.kblack,
                      border: InputBorder.none,
                    )),
                  ),
                  const Spacer(),
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: CustomColor.kwhite,
                      border: Border.all(
                        color: CustomColor.klightgrey,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu,
                      size: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AddCustomSpace(width: 0, height: 40.h),
          ScaleTransition(
            scale: contController,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 180.h,
              width: 400.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                boxShadow: [
                  BoxShadow(
                    color: CustomColor.kprimarygreen.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: const Offset(4, 8), // changes position of shadow
                  )
                ],
                color: CustomColor.kprimarygreen.withOpacity(0.2),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddCustomSpace(width: 0, height: 20.h),
                          SlideTransition(
                            position: Tween<Offset>(
                                    begin: Offset(-1, 0), end: Offset.zero)
                                .animate(contfirsttextController),
                            child: CustomText(
                                text: "Explore the World\nand find best deals",
                                textStyle: CustomTextStyle.khighmidTextStyle,
                                color: CustomColor.kblack,
                                fontWeight:
                                    CustomFontWeight.kExtraBoldFontWeight),
                          ),
                          AddCustomSpace(width: 0, height: 10.h),
                          SlideTransition(
                            position: Tween<Offset>(
                                    begin: Offset(-1, 0), end: Offset.zero)
                                .animate(cont2ndtextController),
                            child: CustomText(
                                text: "Get Special Offer",
                                textStyle: CustomTextStyle.ksmallTextStyle,
                                color: CustomColor.kblack,
                                fontWeight:
                                    CustomFontWeight.kExtraBoldFontWeight),
                          ),
                          AddCustomSpace(width: 0, height: 10.h),
                          ScaleTransition(
                            scale: contbuttonController,
                            child: SizedBox(
                              height: 40.h,
                              width: 100.w,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: CustomText(
                                        text: "Explore More",
                                        textStyle:
                                            CustomTextStyle.ksmallTextStyle,
                                        color: CustomColor.kwhite,
                                        fontWeight:
                                            CustomFontWeight.kMediumFontWeight),
                                  )),
                            ),
                          ),
                        ]),
                  ),
                  ScaleTransition(
                    scale: contbagController,
                    child: Container(
                      height: 120.h,
                      width: 120.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(CustomAssets.bagpack))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AddCustomSpace(width: 0, height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SlideTransition(
              position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
                  .animate(popularrowController),
              child: Row(
                children: [
                  CustomText(
                      text: "Popular Tours",
                      textStyle: CustomTextStyle.kmedTextStyle,
                      color: CustomColor.kblack,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                  const Spacer(),
                  CustomText(
                      text: "See All",
                      textStyle: CustomTextStyle.ksearchTextStyle,
                      color: CustomColor.kprimarygreen,
                      fontWeight: CustomFontWeight.kMediumFontWeight),
                ],
              ),
            ),
          ),
          AddCustomSpace(width: 0, height: 20.h),
          Expanded(
              child: ScaleTransition(
            scale: listviewController,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                scrollDirection: Axis.horizontal,
                itemCount: eventlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      EventContainer(
                        event: eventlist[index],
                      ),
                      AddCustomSpace(width: 10.w, height: 0),
                    ],
                  );
                }),
          )),
        ],
      ),
    );
  }
}
