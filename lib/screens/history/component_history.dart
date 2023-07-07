import 'package:flutter/material.dart';

import '../../const/const.dart';

class HistoryComponent extends StatelessWidget {
  final Widget image;
  final String title;
  final String time;
  final String subtitle;

  const HistoryComponent({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150.w,
                height: 84.h,
                child: image,
              ),
              addWidth(20.w),
              SizedBox(
                width: 150.w,
                height: 84.h,
                child: Column(
                  children: [
                    Text(
                      title,
                      style: myStyle(
                          color: wColor, weight: FontWeight.w500, size: 16.sp),
                    ),
                    addHeight(9.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 140.92),
                      child: Image.asset(
                        icGreaterThan,
                        width: 6.28.w,
                        height: 12.67.h,
                      ),
                    ),
                    addHeight(9.h),
                    Text(
                      time,
                      style: myStyle(
                          color: wColor, weight: FontWeight.w400, size: 11.sp),
                    ),
                    addHeight(5.h),
                    Text(
                      subtitle,
                      style: myStyle(
                          color: wColor, weight: FontWeight.w400, size: 11.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 34.h,
              left: 90.w,
              child: Image.asset(
                icPlayHistory,
                width: 13.45.w,
                height: 14.73.h,
                color: wColor,
              )),
          Positioned(
            top: 74.h,
            left: 38.w,
            right: 208.w,
            child: SizedBox(
              width: 136.w,
              height: 3.h,
              child: LinearProgressIndicator(
                value: 0.25,
                backgroundColor: rColor,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.transparent),
                // value: controller.value,
                semanticsLabel: 'Linear progress indicator',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
