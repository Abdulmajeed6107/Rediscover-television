import 'package:flutter_application_john/const/const.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 65, left: 31.79, right: 86.64, bottom: 13),
            child: Image.asset(
              imgMarySmithText,
              width: 250,
              height: 132,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 103.35,
              right: 16.48,
              top: 12.08,
            ),
            child: Image.asset(
              imgelizebethJonesText,
              width: 250,
              height: 105,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 32.29, right: 86.65, top: 12, bottom: 19.89),
            child: Image.asset(
              imBarbaraBrownText,
              width: 250,
              height: 118.67,
            ),
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
                      submitrivew,
                      textAlign: TextAlign.start,
                      style: myStyle(
                          size: 20.sp, weight: FontWeight.w700, color: wColor),
                    ),
                  ),
                  addHeight(25.h),
                  SizedBox(
                    width: 325.w,
                    child: Text(
                      creview,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
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
