import 'package:flutter_application_john/const/const.dart';

import 'onboarding_screen_two.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrColor,
      body: Column(
        children: [
          addHeight(76.h),
          Image.asset(
            imgJohn,
            height: 444.h,
            width: 290.w,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
              width: double.maxFinite,
              color: containerColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 218.w,
                    child: Text(
                      nevermiss,
                      textAlign: TextAlign.start,
                      style: myStyle(
                          size: 20.sp, weight: FontWeight.w700, color: wColor),
                    ),
                  ),
                  addHeight(25.h),
                  SizedBox(
                    width: 325.w,
                    child: Text(
                      btfirst,
                      style: myStyle(
                          size: 16.sp, weight: FontWeight.w400, color: lgColor),
                    ),
                  ),
                  addHeight(25.h),
                  Image.asset(
                    icSIndicator,
                    width: 57.w,
                    height: 6.h,
                  ),
                  addHeight(45.h),
                  SizedBox(
                    width: 325.w,
                    height: 44.h,
                    child: RoundedButton(
                      btname: getstarted,
                      onTap: () {
                       Navigator.pushNamed(context, '/oSTwo');
                      },
                      textStyle: myStyle(
                          size: 14.sp, weight: FontWeight.w500, color: wColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
