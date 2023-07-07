import 'dart:developer';

import 'package:flutter_application_john/const/const.dart';
import 'package:flutter_application_john/controller/auth_conteroller.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  
  const SignInScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    log('rebuild');
    TextEditingController controller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();

   
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(right: 24.w, left: 24.w),
        color: backgrColor,
        child: Center(
          child: Column(
            children: [
              addHeight(120.h),
              Text(
                signin,
                style: myStyle(
                    size: 24.sp, color: wColor, weight: FontWeight.w700),
              ),
              addHeight(10.h),
              SizedBox(
                  width: 280.sp,
                  height: 40.sp,
                  child: Center(
                      child: Text(
                    enterinfo,
                    textAlign: TextAlign.center,
                    style: myStyle(
                        weight: FontWeight.w400, color: wColor, size: 14.sp),
                  ))),
              addHeight(38.h),
              CustomTextFormField(
                hintText: email,
                prefixIcon: icDropDown,
                controller: controller,
              ),
              addHeight(32.h),
              CustomTextFormField(
                hintText: pass,
                prefixIcon: icLock,
                controller: passcontroller,
                suffixIcon: icEye,
              ),
              addHeight(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: lgColor,
                    ),
                    child: Consumer<AuthController>(
                      builder: (context, aC, child) {
                        return  SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                              value:aC.isChecked ,
                              activeColor: rColor,
                              focusColor: rColor,
                            
                              onChanged: (newValue) {
                                aC.setChecked(newValue!);
                             
                              }),
                        );
                      },
                                     
                    ),
                  ),
                  addWidth(10.w),
                  Text(
                    saveinfo,
                    style: myStyle(
                        color: lgColor, size: 14.sp, weight: FontWeight.w400),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      forgotpass,
                      style: myStyle(
                          color: lgColor,
                          size: 14.sp,
                          weight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              addHeight(20.h),
              SizedBox(
                width: 327.sp,
                height: 44.sp,
                child: RoundedButton(
                  btname: signin,
                  onTap: () {
                    print("button pressed");
                  },
                  textStyle: myStyle(
                      size: 14.sp, weight: FontWeight.w500, color: wColor),
                ),
              ),
              addHeight(41.h),
              SizedBox(
                width: 327.sp,
                height: 44.sp,
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(color: Colors.grey, thickness: 2.h)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
                      child: Text('Or',
                          style: myStyle(
                              size: 12.sp,
                              weight: FontWeight.w500,
                              color: lgColor)),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                      thickness: 2.h,
                    )),
                  ],
                ),
              ),
              addHeight(41.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        icFb,
                        width: 45.w,
                        height: 45.h,
                      )),
                  addWidth(35.w),
                  TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        icGoolge,
                        width: 45.w,
                        height: 45.h,
                      )),
                  addWidth(35.w),
                  TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        icApple,
                        width: 45.w,
                        height: 45.h,
                      )),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    donthave,
                    style: myStyle(
                        size: 14.sp, color: lgColor, weight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      signup,
                      style: myStyle(
                          color: rColor,
                          weight: FontWeight.w500,
                          size: 14.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
