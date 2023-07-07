import 'package:flutter/material.dart';
import 'package:flutter_application_john/const/const.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController pincontroller = TextEditingController();
  String enterpin = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: ListView(
            children: [
              addHeight(120.h),
              Center(
                child: Text(
                  verifycode,
                  style: myStyle(
                      size: 24.sp, weight: FontWeight.w700, color: wColor),
                ),
              ),
              addHeight(10.h),
              SizedBox(
                width: 265.w,
                height: 40.h,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Please type the verification code we sent it to ',
                      style: myStyle(
                          size: 14.sp, weight: FontWeight.w400, color: lgColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: 's.taylor@gmail.com',
                            style: myStyle(
                                size: 14.sp,
                                weight: FontWeight.w500,
                                color: wColor)),
                      ]),
                ),
              ),
              addHeight(38.h),
              Center(
                child: PinCodeTextField(
                  controller: pincontroller,
                  highlight: true,
                  highlightColor: wColor,
                  defaultBorderColor: lgColor,
                  hasTextBorderColor: Colors.green,
                  pinBoxHeight: 44,
                  pinBoxWidth: 50,
                  pinTextStyle: TextStyle(fontSize: 22),
                  pinBoxRadius: 7,
                  pinBoxBorderWidth: 1,
                  maxLength: 5,
                  onDone: (pin) {
                    setState(() {});
                  },
                  pinBoxDecoration:
                      ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinBoxColor: Colors.transparent,
                  // pinTextStyle: TextStyle(fontSize: 22.0),
                ),
              ),
              addHeight(20.h),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    requestcode,
                    style: myStyle(
                        color: rColor, weight: FontWeight.w500, size: 14.sp),
                  )),
              addHeight(104.h),
              Center(
                child: SizedBox(
                    width: 327,
                    height: 44,
                    child: RoundedButton(
                      btname: verifymail,
                      textStyle: myStyle(
                          size: 14.sp, weight: FontWeight.w500, color: wColor),
                    )),
              ),
              addHeight(15.h),
            ],
          ),
        ),
      ),
    );
  }
}
