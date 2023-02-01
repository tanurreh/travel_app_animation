// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:travel_app/Model/chatmodel.dart';
import 'package:travel_app/Screens/event_screen.dart';
import 'package:travel_app/Widget/add_space.dart';
import 'package:travel_app/Widget/text_widgets.dart';
import 'package:travel_app/data/data.dart';

class EventContainer extends StatefulWidget {
  final Event event;
  const EventContainer({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  State<EventContainer> createState() => _EventContainerState();
}

bool isSelect = false;

class _EventContainerState extends State<EventContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(EventScreen(
          eventl: widget.event,
        ));
      },
      child: Container(
        height: 280.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: boxshadow,
          color: CustomColor.kwhite,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15.h, bottom: 25.h),
              height: 180.h,
              width: 250.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        widget.event.imagepath,
                      ))),
              child: Stack(
                children: [
                  Positioned(
                    top: 10.h,
                    left: 20.w,
                    child: Container(
                      height: 30.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.r),
                        color: CustomColor.kwhite.withOpacity(0.3),
                      ),
                      child: CustomText(
                          text: "\$532/right",
                          textStyle: CustomTextStyle.kmedTextStyle,
                          color: CustomColor.kwhite,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: widget.event.title,
                          textStyle: CustomTextStyle.ktextTextStyle,
                          color: CustomColor.kblack,
                          fontWeight: CustomFontWeight.kExtraBoldFontWeight),
                      AddCustomSpace(width: 0, height: 10.h),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 5,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18.sp,
                            ),
                            itemCount: 1,
                            itemSize: 15.0,
                            direction: Axis.horizontal,
                          ),
                          AddCustomSpace(width: 4.w, height: 0),
                          RichText(
                            text: TextSpan(
                              text: widget.event.starrating.toString(),
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
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelect = !isSelect;
                          });
                        },
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
                    ],
                  )
                ],
              ),
            ),
            AddCustomSpace(width: 0, height: 10.h),
          ],
        ),
      ),
    );
  }
}
