import 'package:flutter_application_john/screens/profile/component/custom_elevatedbutton.dart';
import 'package:flutter_application_john/const/const.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController pnametextcontroller = TextEditingController();
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // CroppedFile? _croppedFile;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bgColor,
        body: Center(
          child: Container(
            padding: EdgeInsets.only(right: 24.w, left: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addHeight(59.h),
                    Text(
                      profile,
                      style: myStyle(
                          color: wColor, weight: FontWeight.w500, size: 18.sp),
                    ),
                  ],
                ),
                addHeight(32.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        imgSophiaTaylor,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    addWidth(15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sophia,
                          style: myStyle(
                              color: wColor,
                              size: 18.sp,
                              weight: FontWeight.w500),
                        ),
                        addHeight(2.h),
                        Text(
                          staylor,
                          style: myStyle(
                              color: wColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                        addHeight(10.h),
                        Container(
                          height: 24.h,
                          width: 88.w,
                          decoration: BoxDecoration(
                            color: yColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.r)),
                          ),
                          child: Row(
                            children: [
                              addWidth(5.w),
                              Image.asset(
                                icCrown,
                                color: backgrColor,
                                width: 9.27.w,
                                height: 7.82.h,
                              ),
                              addWidth(7.4.w),
                              Text(premium),
                            ],
                          ),
                        ),
                      ],
                    ),
                    addWidth(90.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfileScreen(),
                            ));
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            icEditProfile,
                            width: 30.w,
                            height: 30.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                addHeight(32.h),
                Text(
                  yoactivities,
                  style: myStyle(
                      color: wColor, weight: FontWeight.w500, size: 16.sp),
                ),
                addHeight(12.h),
                CustomElevateddButton(
                  prefixIcon: Image.asset(
                    icBookMark,
                    width: 13.9.w,
                    height: 16.1.h,
                  ),
                  title: bookmark,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      '16',
                      style: myStyle(
                          size: 13.sp, color: lgColor, weight: FontWeight.w400),
                    ),
                  ),
                  onTap: () {},
                ),
                addHeight(15.h),
                CustomElevateddButton(
                    title: reviews,
                    prefixIcon: Image.asset(
                      icreviews,
                      width: 16.w,
                      height: 16.h,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Text(
                        "512",
                        style: myStyle(
                            size: 13.sp,
                            weight: FontWeight.w400,
                            color: lgColor),
                      ),
                    ),
                    onTap: () {}),
                addHeight(15.h),
                CustomElevateddButton(
                    title: history,
                    prefixIcon: Image.asset(
                      icPlayHistory,
                      width: 16.w,
                      height: 15.h,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: lgColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HistoryScreen(),
                              ));
                        },
                      ),
                    ),
                    onTap: () {}),
                addHeight(32.h),
                Text(
                  account,
                  style: myStyle(
                      color: wColor, size: 16.sp, weight: FontWeight.w500),
                ),
                addHeight(24.h),
                CustomElevateddButton(
                    title: settings,
                    prefixIcon: Image.asset(
                      icSettings,
                      width: 16.w,
                      height: 15.h,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: lgColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingScreen(),
                              ));
                        },
                      ),
                    ),
                    onTap: () {}),
                addHeight(15.h),
                CustomElevateddButton(
                    title: subplan,
                    prefixIcon: Image.asset(
                      icDollar,
                      width: 16.w,
                      height: 16.h,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Image.asset(icGreaterThan,
                          width: 5.24.w, height: 10.56.h),
                    ),
                    onTap: () {}),
                addHeight(15.h),
                CustomElevateddButton(
                    title: changepass,
                    prefixIcon: Image.asset(
                      icLock,
                      width: 16.w,
                      height: 16.h,
                    ),
                    suffixIcon: Padding(
                      padding:  EdgeInsets.only(left: 0.w),
                      child:  IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: lgColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingScreen(),
                              ));
                        },
                      ),
                    ),
                    onTap: () {
                      
                    }),
                addHeight(15.h),
                SizedBox(
                  height: 44.h,
                  width: 327.w,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(rColor)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          icLogout,
                          width: 24.w,
                          height: 24.h,
                        ),
                        addWidth(20.w),
                        Text(
                          logout,
                          style: myStyle(
                              size: 14.sp,
                              weight: FontWeight.w500,
                              color: wColor),
                        ),
                        addWidth(109.w),
                        Padding(
                          padding: const EdgeInsets.only(left: 78),
                          child: Image.asset(icGreaterThan,
                              width: 5.24.w, height: 10.56.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
