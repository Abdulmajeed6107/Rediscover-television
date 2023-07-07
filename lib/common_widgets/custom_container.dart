import 'package:flutter_application_john/const/const.dart';

// ignore: must_be_immutable
class CustomTextFormContainer extends StatelessWidget {
  final String prefixIcon;
  final String? suffixIcon;
  final String? hintText;
  final String? validator;
  TextEditingController controller = TextEditingController();
  CustomTextFormContainer(
      {super.key,
      required this.prefixIcon,
      this.suffixIcon,
      required this.controller,
      required this.hintText,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 44.h,
      child: TextFormField(
        controller: controller,
        cursorColor: lgColor,
        style: myStyle(
          size: 16.sp,
        ),
        decoration: InputDecoration(
            hintStyle: myStyle(size: 14.sp, color: lgColor),
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            prefixIcon: Padding(
              padding: EdgeInsets.all(13.h),
              child: Image.asset(
                prefixIcon,
                width: 11.26.w,
                height: 7.4.h,
              ),
            ),
            suffixIcon: suffixIcon != null
                ? Padding(
                    padding: EdgeInsets.all(15.h),
                    child:
                        Image.asset(suffixIcon!, width: 4.41.w, height: 4.57.h),
                  )
                : null,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.w,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(
                color: lgColor,
                width: 1.w,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none
            )
            ),
      ),
    );
    
  }
}
