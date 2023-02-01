// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:travel_app/Model/chatmodel.dart';
import 'package:travel_app/Widget/add_space.dart';
import 'package:travel_app/Widget/text_widgets.dart';
import 'package:travel_app/data/data.dart';

class EventScreen extends StatefulWidget {
  final Event eventl;
  const EventScreen({
    Key? key,
    required this.eventl,
  }) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

bool isSelect = false;

class _EventScreenState extends State<EventScreen>
    with TickerProviderStateMixin {
  late AnimationController backController;
  late AnimationController detailtextController;
  late AnimationController menuController;
  late AnimationController imageController;
  late AnimationController imagetextController;
  late AnimationController heartController;
  late AnimationController ratingtextController;
  late AnimationController ratingstarController;
  late AnimationController prizetextController;
  late AnimationController prizevalueController;
  late AnimationController drawerController;
  late AnimationController desscriptionController;
  late AnimationController desscriptiontextController;
  late AnimationController desscriptionbuttonController;

  @override
  void initState() {
    super.initState();
    backController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    detailtextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    menuController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    imageController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    imagetextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    heartController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    ratingtextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    ratingstarController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    prizetextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    prizevalueController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    drawerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    desscriptionController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    desscriptiontextController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    desscriptionbuttonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    200.milliseconds.delay().then(
          (value) => backController.forward(),
        );
    250.milliseconds.delay().then(
          (value) => detailtextController.forward(),
        );
    300.milliseconds.delay().then(
          (value) => menuController.forward(),
        );
    350.milliseconds.delay().then(
          (value) => imageController.forward(),
        );
    400.milliseconds.delay().then(
          (value) => imagetextController.forward(),
        );
    450.milliseconds.delay().then(
          (value) => heartController.forward(),
        );
    500.milliseconds.delay().then(
          (value) => ratingtextController.forward(),
        );
    550.milliseconds.delay().then(
          (value) => ratingstarController.forward(),
        );
    600.milliseconds.delay().then(
          (value) => prizetextController.forward(),
        );
    650.milliseconds.delay().then(
          (value) => prizevalueController.forward(),
        );
    700.milliseconds.delay().then(
          (value) => drawerController.forward(),
        );
    750.milliseconds.delay().then(
          (value) => desscriptionController.forward(),
        );
    800.milliseconds.delay().then(
          (value) => desscriptiontextController.forward(),
        );
    850.milliseconds.delay().then(
          (value) => desscriptionbuttonController.forward(),
        );
  }

  @override
  void dispose() {
    super.dispose();
    backController.dispose();
    detailtextController.dispose();
    menuController.dispose();
    imageController.dispose();
    imagetextController.dispose();
    heartController.dispose();
    ratingtextController.dispose();
    ratingstarController.dispose();
    prizetextController.dispose();
    prizevalueController.dispose();
    drawerController.dispose();
    desscriptionController.dispose();
    desscriptiontextController.dispose();
    desscriptionbuttonController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddCustomSpace(width: 0, height: 30.h),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: ScaleTransition(
                    scale: backController,
                    child: Container(
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
                        Icons.arrow_back_ios_rounded,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(detailtextController),
                  child: CustomText(
                      text: "Detail Tours",
                      textStyle: CustomTextStyle.ktextTextStyle,
                      color: CustomColor.kblack.withOpacity(0.7),
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                ),
                const Spacer(),
                ScaleTransition(
                  scale: menuController,
                  child: Container(
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
                      Icons.more_vert,
                      size: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
            AddCustomSpace(width: 0, height: 20.h),
            ScaleTransition(
              scale: imageController,
              child: Container(
                  height: 320.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                      color: CustomColor.klightgrey,
                      boxShadow: boxshadow,
                      borderRadius: BorderRadius.circular(28.r),
                      //border: Border.all(color: CustomColor.klightgrey),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            widget.eventl.imagepath,
                          )))),
            ),
            AddCustomSpace(width: 0, height: 30.h),
            Row(
              children: [
                SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(imagetextController),
                  child: CustomText(
                      text: widget.eventl.title,
                      textStyle: CustomTextStyle.kmedhighTextStyle,
                      color: CustomColor.kblack,
                      fontWeight: CustomFontWeight.kExtraBoldFontWeight),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelect = !isSelect;
                    });
                  },
                  child: ScaleTransition(
                    scale: heartController,
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: CustomColor.kprimarygreen.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: isSelect
                          ? Icon(
                              Icons.favorite,
                              size: 24.sp,
                              color: CustomColor.kprimarygreen,
                            )
                          : Icon(
                              Icons.favorite_border,
                              size: 24.sp,
                              color: CustomColor.kprimarygreen,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            AddCustomSpace(width: 0, height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SlideTransition(
                      position: Tween<Offset>(
                              begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(ratingtextController),
                      child: CustomText(
                          text: "Rating",
                          textStyle: CustomTextStyle.ktextTextStyle,
                          color: CustomColor.kblack,
                          fontWeight: CustomFontWeight.kExtraBoldFontWeight),
                    ),
                    SlideTransition(
                      position: Tween<Offset>(
                              begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(ratingstarController),
                      child: Row(
                        children: [
                          RatingBarIndicator(
                            rating: 5,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18.sp,
                            ),
                            itemCount: 5,
                            itemSize: 15.0,
                            direction: Axis.horizontal,
                          ),
                          AddCustomSpace(width: 4.w, height: 0),
                          RichText(
                            text: TextSpan(
                              text: widget.eventl.starrating.toString(),
                              style: CustomTextStyle.ktextTextStyle.copyWith(
                                  color: CustomColor.kblack,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '(231review)',
                                  style:
                                      CustomTextStyle.ksmallTextStyle.copyWith(
                                    color: CustomColor.klightgrey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SlideTransition(
                      position: Tween<Offset>(
                              begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(prizetextController),
                      child: CustomText(
                          text: "Prize",
                          textStyle: CustomTextStyle.ktextTextStyle,
                          color: CustomColor.kblack,
                          fontWeight: CustomFontWeight.kExtraBoldFontWeight),
                    ),
                    AddCustomSpace(width: 0, height: 4.h),
                    SlideTransition(
                      position: Tween<Offset>(
                              begin: Offset(0.0, 1.0), end: Offset.zero)
                          .animate(prizevalueController),
                      child: RichText(
                        text: TextSpan(
                          text: '\$532/',
                          style: CustomTextStyle.ktextTextStyle.copyWith(
                            color: CustomColor.kprimarygreen,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'night',
                              style: CustomTextStyle.ktextTextStyle.copyWith(
                                color: CustomColor.kblack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            AddCustomSpace(width: 0, height: 6.h),
            ScaleTransition(scale: drawerController, child: const Divider()),
            AddCustomSpace(width: 0, height: 24.h),
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
                  .animate(desscriptionController),
              child: CustomText(
                  text: "Descriptions",
                  textStyle: CustomTextStyle.kmedTextStyle,
                  color: CustomColor.kblack,
                  fontWeight: CustomFontWeight.kExtraBoldFontWeight),
            ),
            AddCustomSpace(width: 0, height: 10.h),
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
                  .animate(desscriptiontextController),
              child: CustomText(
                  text:
                      "Peace and tranquility miles above it all. That alone is\n \na great reason to take a trip to the mountains. More\n \nprivacy, Fresh air. Pristine grounds see more",
                  textStyle: CustomTextStyle.ksearchTextStyle,
                  color: CustomColor.klightgrey,
                  fontWeight: CustomFontWeight.kExtraBoldFontWeight),
            ),
            ScaleTransition(
                scale: desscriptionbuttonController,
                child: AddCustomSpace(width: 0, height: 18.h)),
            SizedBox(
              height: 60.h,
              width: 380.w,
              child: ElevatedButton(
                  onPressed: () {},
                  child: CustomText(
                      text: "Booking Now",
                      textStyle: CustomTextStyle.ktextTextStyle,
                      color: CustomColor.kwhite,
                      fontWeight: CustomFontWeight.kMediumFontWeight)),
            )
          ],
        ),
      ),
    );
  }
}
