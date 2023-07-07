import 'package:flutter/material.dart';
import 'package:flutter_application_john/const/const.dart';
import 'package:flutter_application_john/const/images.dart';

class QuietPlaceMovieScreen extends StatefulWidget {
  const QuietPlaceMovieScreen({super.key});

  @override
  State<QuietPlaceMovieScreen> createState() => _QuietPlaceMovieScreenState();
}

class _QuietPlaceMovieScreenState extends State<QuietPlaceMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgrColor,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  imgQuietPlaceLittle, width: double.maxFinite.w,
                ),
                Positioned(
                    top: 10.h,
                    left: 24.w,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: wColor,
                          size: 18,
                        ),
                        addWidth(18.w),
                        Text(
                          quietplace,
                          style: myStyle(
                              color: wColor,
                              size: 18.sp,
                              weight: FontWeight.w500),
                        )
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
