import 'package:flutter/material.dart';
import 'package:flutter_application_john/const/colors.dart';
import 'package:flutter_application_john/const/const.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          children: [
            Row(
              children: [
                addHeight(64.8.h),
                addWidth(34.8.w),
                Image.asset(
                  icCross,
                  width: 14.41.w,
                  height: 14.41.h,
                )
              ],
            ),
            addHeight(150.h),
            Image.asset(
              imgCongratulations,
              width: 137.w,
              height: 140.h,
            ),
            addHeight(30.h),
            Text(
              congrats,
              style:
                  myStyle(color: wColor, size: 24.sp, weight: FontWeight.w700),
            ),
            addHeight(10.h),
            SizedBox(
              width: 265.w,
              height: 40.h,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  verifiedmailtext,
                  textAlign: TextAlign.center,
                  style: myStyle(
                      color: lgColor, size: 14.sp, weight: FontWeight.w400),
                ),
              ),
            ),
            addHeight(212.h),
            RoundedButton(
              btname: entertelevision,
              textStyle:
                  myStyle(size: 14.sp, weight: FontWeight.w500, color: wColor),
            ),
            addHeight(22.h),
          ],
        ),
      ),
    );
  }
}
