import 'package:flutter_application_john/const/const.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: backgrColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(right: 24.w, left: 24.w),
        child: Column(
          children: [
            addHeight(120.h),
            Text(
              signup,
              style:
                  myStyle(size: 24.sp, color: wColor, weight: FontWeight.w700),
            ),
            addHeight(10.h),
            SizedBox(
                width: 265.w,
                height: 40.h,
                child: Center(
                    child: Text(
                  enterinfo,
                  textAlign: TextAlign.center,
                  style: myStyle(
                      weight: FontWeight.w400, color: wColor, size: 14.sp),
                ))),
            addHeight(38.h),
            CustomTextFormField(
              hintText: sophia,
              controller: controller,
              prefixIcon: icHuman,
            ),
            addHeight(32.h),
            CustomTextFormField(
              hintText: sophiamail,
              prefixIcon: icDropDown,
              controller: passcontroller,
            ),
            addHeight(32.h),
            CustomTextFormField(
              hintText: "......",
              prefixIcon: icLock,
              suffixIcon: icEye,
              controller: passcontroller,
            ),
            addHeight(8.h),
            SizedBox(
              width: 295.w,
              height: 22.h,
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: parColor,
                    thickness: 3.h,
                  )),
                  addWidth(9.w),
                  Expanded(
                      child: Divider(
                    color: parColor,
                    thickness: 3.h,
                  )),
                  addWidth(9.w),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 3.h,
                  )),
                  addWidth(9.w),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 3.h,
                  )),
                ],
              ),
            ),
            SizedBox(
              width: 295.w,
              height: 22.h,
              child: Row(
                children: [
                  Text(
                    uppercase,
                    style: myStyle(
                        color: parColor, weight: FontWeight.w400, size: 11.sp),
                  ),
                  addWidth(36.w),
                  Text(
                    num,
                    style: myStyle(
                        color: parColor, weight: FontWeight.w400, size: 11.sp),
                  ),
                  addWidth(36.5.w),
                  Text(
                    lowercase,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w400, size: 11.sp),
                  ),
                  Spacer(),
                  Text(
                    char,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w400, size: 11.sp),
                  ),
                ],
              ),
            ),
            addHeight(32.h),
            SizedBox(
              width: 327.sp,
              height: 44.sp,
              child: RoundedButton(
                btname: signup,
                onTap: () {},
                textStyle: myStyle(
                    size: 14.sp, weight: FontWeight.w500, color: wColor),
              ),
            ),
            addHeight(9.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  policyaccept,
                  style: myStyle(
                      color: wColor, size: 12.sp, weight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      policyand,
                      style: myStyle(
                        color: rColor,
                        weight: FontWeight.w400,
                        size: 12.sp,
                      ),
                    )),
                Text(
                  policyandsign,
                  style: myStyle(
                      color: wColor, size: 12.sp, weight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      policyterms,
                      style: myStyle(
                          color: rColor, size: 12.sp, weight: FontWeight.w400),
                    )),
              ],
            ),
            addHeight(25.h),
            SizedBox(
              width: 295.w,
              height: 44.h,
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 2.h)),
                  addWidth(10.w),
                  Text('Or Select',
                      style: myStyle(
                          size: 12.sp,
                          weight: FontWeight.w500,
                          color: lgColor)),
                  addWidth(10.w),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 2.h,
                  )),
                ],
              ),
            ),
            addHeight(20.h),
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    alreadyhave,
                    style: myStyle(
                        size: 14.sp, color: lgColor, weight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                    child: Text(
                      signin,
                      style: myStyle(
                          color: rColor, weight: FontWeight.w500, size: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
