import 'package:flutter/material.dart';
import 'package:flutter_application_john/const/const.dart';

class SubScriptionScreen extends StatefulWidget {
  const SubScriptionScreen({super.key});

  @override
  State<SubScriptionScreen> createState() => _SubScriptionScreenState();
}

class _SubScriptionScreenState extends State<SubScriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addHeight(54.h),
              Padding(
                padding: const EdgeInsets.only(left: 37.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: wColor,
                    ),
                  ],
                ),
              ),
              addHeight(30.h),
              Text(
                subscribeplan,
                style: myStyle(
                    color: wColor, size: 24.sp, weight: FontWeight.w700),
              ),
              addHeight(10.h),
              SizedBox(
                width: 245.w,
                height: 60.h,
                child: Text(
                  selectplan,
                  textAlign: TextAlign.center,
                  style: myStyle(
                      color: lgColor, size: 14.sp, weight: FontWeight.w400),
                ),
              ),
              addHeight(40.h),
              Container(
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: rColor)),
                  height: 374.h,
                  width: 300.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addHeight(18.h),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              icCrown,
                              width: 55.w,
                              height: 55.h,
                              color: rColor,
                            ),
                            addHeight(13.h),
                            Text(
                              premium,
                              style: myStyle(
                                  color: wColor,
                                  size: 20.sp,
                                  weight: FontWeight.w700),
                            ),
                            addHeight(4.h),
                            Text(
                              premiumprice,
                              style: myStyle(
                                  color: lgColor,
                                  size: 14.sp,
                                  weight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      addHeight(20.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          higquality,
                          style: myStyle(
                              color: wColor,
                              size: 14.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.check,
                          color: rColor,
                        ),
                      ),
                      // addHeight(10.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          wquality,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      addHeight(15.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          watchoff,
                          style: myStyle(
                              color: wColor,
                              size: 14.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.check,
                          color: rColor,
                        ),
                      ),
                      // addHeight(10.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          downloadvideo,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      addHeight(15.h),
        
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          adfree,
                          style: myStyle(
                              color: wColor,
                              size: 14.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.check,
                          color: rColor,
                        ),
                      ),
                      // addHeight(10.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          addsfree,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
              addHeight(32.h),
              //second container starts from here
        
              Container(
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  height: 374.h,
                  width: 300.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addHeight(18.h),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              icCrown,
                              width: 55.w,
                              height: 55.h,
                              color: yColor,
                            ),
                            addHeight(13.h),
                            Text(
                              premium,
                              style: myStyle(
                                  color: wColor,
                                  size: 20.sp,
                                  weight: FontWeight.w700),
                            ),
                            addHeight(4.h),
                            Text(
                              premiumprice,
                              style: myStyle(
                                  color: lgColor,
                                  size: 14.sp,
                                  weight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      addHeight(20.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          higquality,
                          style: myStyle(
                              color: wColor,
                              size: 14.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.check,
                          color: yColor,
                        ),
                      ),
                      // addHeight(10.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          wquality,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      addHeight(15.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          watchoff,
                          style: myStyle(
                              color: wColor,
                              size: 14.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.check,
                          color: yColor,
                        ),
                      ),
                      // addHeight(10.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          downloadvideo,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      addHeight(15.h),
        
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          adfree,
                          style: myStyle(
                              color: wColor,
                              size: 14.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.check,
                          color: yColor,
                        ),
                      ),
                      // addHeight(10.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          addsfree,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
              addHeight(32.h),
              RoundedButton(btname: continu),
              addHeight(25.h),
            ],
          ),
        ),
      ),
    );
  }
}
