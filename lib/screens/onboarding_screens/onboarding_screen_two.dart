import 'package:flutter_application_john/const/const.dart';

import 'onboarding_screen_three.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          addHeight(76.h),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                  child: Image.asset(
                imgQuietPlace,
                width: 290.w,
                height: 325.h,
              )),
              Positioned(
                top: 310.h,
                left: 90.w,
                child: Image.asset(
                  imgStory,
                  width: 270.w,
                  height: 105.h,
                ),
              )
            ],
          ),
          addHeight(
            102.h,
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
                      getinfo,
                      textAlign: TextAlign.start,
                      style: myStyle(
                          size: 20.sp, weight: FontWeight.w700, color: wColor),
                    ),
                  ),
                  addHeight(25.h),
                  SizedBox(
                    width: 325.w,
                    child: Text(
                      prepare,
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
                  addHeight(55.h),
                  SizedBox(
                    width: 325.w,
                    height: 44.h,
                    child: RoundedButton(
                      btname: getstarted,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardingScreenThree()));
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
