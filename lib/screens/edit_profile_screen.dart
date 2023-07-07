import 'package:flutter_application_john/const/const.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  XFile? _pickedFile;
  TextEditingController pnametextcontroller = TextEditingController();

  // CroppedFile? _croppedFile;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bgColor,
        body: Container(
          padding: EdgeInsets.only(right: 24.w, left: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addHeight(60.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: IconButton(
                      onPressed:() {Navigator.of(context).pop();},
                      icon: 
                      Icon(Icons.arrow_back_ios, color: wColor, size: 20.sp)),
                  ),
                  addWidth(82.w),
                  Text(
                   editP ,
                    style: myStyle(
                        color: wColor, weight: FontWeight.w500, size: 18.sp),
                  ),
                ],
              ),
              addHeight(38.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          imgSophiaTaylor,
                          width: 90.w,
                          height: 90.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 35.w,
                          height: 35.h,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: rColor,
                          ),
                          padding: EdgeInsets.all(4.h),
                          child: Icon(
                            Icons.camera_alt,
                            color: wColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              addHeight(40.h),
              Text(
                fname,
                style:
                    myStyle(color: wColor, weight: FontWeight.w400, size: 13.sp),
              ),
              addHeight(5.h),
              SizedBox(
                width: 327.w,
                height: 44.h,
                child: CustomTextFormField(
                    prefixIcon: icHuman,
                    controller: pnametextcontroller,
                    hintText: sophia),
              ),
               addHeight(20.h),
              Text(
                username,
                style:
                    myStyle(color: wColor, weight: FontWeight.w400, size: 13.sp),
              ),
              addHeight(5.h),
              SizedBox(
                width: 327.w,
                height: 44.h,
                child: CustomTextFormField(
                    prefixIcon: icAcount,
                    controller: pnametextcontroller,
                    hintText: staylor),
              ),
               addHeight(20.h),
              Text(
                email,
                style:
                    myStyle(color: wColor, weight: FontWeight.w400, size: 13.sp),
              ),
              addHeight(5.h),
              SizedBox(
                width: 327.w,
                height: 44.h,
                child: CustomTextFormField(
                    prefixIcon: icDropDown,
                    controller: pnametextcontroller,
                    hintText: sophiamail),
              ),
               addHeight(20.h),
              Text(
                gender,
                style:
                    myStyle(color: wColor, weight: FontWeight.w400, size: 13.sp),
              ),
              addHeight(5.h),
              SizedBox(
                width: 327.w,
                height: 44.h,
                child: CustomTextFormField(
                    prefixIcon: icHuman,
                    suffixIcon: icChoose,
                    controller: pnametextcontroller,
                    hintText: female),
              ),
              addHeight(144.h),
              RoundedButton(btname: savechange, textStyle: myStyle(
                color: wColor, weight: FontWeight.w500, size: 14.sp
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
