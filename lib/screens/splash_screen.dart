import 'dart:async';

import 'package:flutter_application_john/const/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
     Navigator.pushNamedAndRemoveUntil(context, '/oSOne', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 231.w,
              child: Text(
                rediscover,
                textAlign: TextAlign.center,
                style: myStyle(
                  size: 45.sp,
                  weight: FontWeight.w400,
                  color: wColor,
                ),
              ),
            ),
            addHeight(50.h),
            CircularProgressIndicator(
              color: wColor,
            )
          ],
        ),
      ),
    );
  }
}
