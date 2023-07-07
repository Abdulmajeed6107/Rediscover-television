import '../../const/const.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool darkMode = true;

  final CustomSwitchController _controller = CustomSwitchController();
  var _state = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        this._state = _controller.value;
      });
    });
  }

  // bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkMode ? bgColor : wColor,
        body: Container(
          padding: EdgeInsets.only(left: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    addHeight(54.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios,
                              color: darkMode ? wColor : bgColor, size: 20)),
                    ),
                    addWidth(82.w),
                    Text(
                      settings,
                      style: myStyle(
                          color: darkMode ? wColor : bgColor,
                          weight: FontWeight.w500,
                          size: 18.sp),
                    )
                  ],
                ),
                addHeight(32.h),
                Text(
                  general,
                  style: myStyle(
                      color: darkMode ? wColor : bgColor,
                      size: 16.sp,
                      weight: FontWeight.w500),
                ),
                addHeight(12.h),
                CustomElevateddButton(
                    title: changelanguage,
                    prefixIcon: Image.asset(
                      icLanguage,
                      width: 24.w,
                      height: 24.h,
                    ),
                    suffixIcon: Text(
                      english,
                      style: myStyle(
                          size: 13.sp, weight: FontWeight.w400, color: lgColor),
                    ),
                    onTap: () {}),
                addHeight(15.h),
                CustomElevateddButton(
                    title: streamquality,
                    prefixIcon: Image.asset(
                      icstream,
                      width: 24.w,
                      height: 24.h,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        fullhd,
                        style: myStyle(
                            size: 13.sp,
                            weight: FontWeight.w400,
                            color: lgColor),
                      ),
                    ),
                    onTap: () {}),
                addHeight(15.h),
                switchElevatedButton(
                  title: notification,
                  prefixIcon: Image.asset(
                    icNotification,
                    width: 24.w,
                    height: 24.h,
                  ),
                  addWidth: addWidth(20.w),
                  suffixIcon: SizedBox(
                      height: 20.h, width: 40.w, child: CustomSwitchdButton()),
                  onTap: () {},
                ),
                addHeight(15.h),
                switchElevatedButton(
                  title: autoplayvideos,
                  prefixIcon: Image.asset(
                    icNotification,
                    width: 24.w,
                    height: 24.h,
                  ),
                  addWidth: addWidth(20.w),
                  suffixIcon: SizedBox(
                      height: 20.h, width: 40.w, child: CustomSwitchdButton()),
                  onTap: () {},
                ),
                addHeight(32.h),
                Text(
                  cache,
                  style: myStyle(
                      color: darkMode ? wColor : bgColor,
                      size: 16.sp,
                      weight: FontWeight.w500),
                ),
                addHeight(12.h),
                SizedBox(
                  width: 327.w,
                  child: LinearProgressIndicator(
                    value: 0.25,
                    backgroundColor: rColor,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.transparent),
                    // value: controller.value,
                    semanticsLabel: 'Linear progress indicator',
                  ),
                ),
                addHeight(10.h),
                Row(
                  children: [
                    Text(
                      cacheuse,
                      style: myStyle(
                          color: lgColor, size: 11.sp, weight: FontWeight.w500),
                    ),
                    addWidth(225.w),
                    Text(
                      cachefreespace,
                      style: myStyle(
                          color: lgColor, size: 11.sp, weight: FontWeight.w500),
                    ),
                  ],
                ),
                addHeight(15.h),
                switchElevatedButton(
                    title: ecache,
                    prefixIcon: Image.asset(
                      icCache,
                      width: 24.w,
                      height: 24.h,
                    ),
                    addWidth: addWidth(20.w),
                    suffixIcon: SizedBox(
                        height: 20.h,
                        width: 40.w,
                        child: CustomSwitchdButton()),
                    onTap: () {}),
                addHeight(15.h),
                switchElevatedButton(
                    title: ccache,
                    prefixIcon: Image.asset(
                      icClear,
                      width: 24.w,
                      height: 24.h,
                    ),
                    addWidth: addWidth(20.w),
                    suffixIcon: SizedBox(
                        height: 20.h,
                        width: 40.w,
                        child: CustomSwitchdButton()),
                    onTap: () {}),
                addHeight(32.h),
                Text(
                  theme,
                  style: myStyle(
                      color: darkMode ? wColor : bgColor,
                      size: 16.sp,
                      weight: FontWeight.w500),
                ),
                addHeight(12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      width: 162.w,
                      height: 44.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: darkMode? rColor: containerColor),
                        onPressed: () {
                          setState(() {
                            darkMode = true;
                          });
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              icLightMode,
                              width: 24.w,
                              height: 24.h,
                            ),
                            addWidth(16.w),
                            Text(
                              darkmode,
                              style: myStyle(
                                  color: wColor,
                                  size: 14.sp,
                                  weight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 162.w,
                      height: 44.h,
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: darkMode ? containerColor : rColor,),
                        onPressed: () {
                          setState(() {
                            darkMode = false;
                          });
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: Text(
                                lightmode,
                                style: myStyle(
                                    size: 14.sp,
                                    weight: FontWeight.w400,
                                    color: wColor),
                              ),
                            ),
                            addWidth(16.w),
                            Image.asset(icDarkMode, width: 24.w, height: 24.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                addHeight(32.h),
                Text(
                  other,
                  style: myStyle(
                      color: darkMode ? wColor : bgColor,
                      size: 16.sp,
                      weight: FontWeight.w500),
                ),
                addHeight(12.h),
                CustomElevateddButton(
                    title: privacypolicy,
                    prefixIcon: Image.asset(
                      icPrivacy,
                      width: 24.w,
                      height: 24.h,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 37.w),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      ),
                    ),
                    onTap: () {}),
                addHeight(15.h),
                CustomElevateddButton(
                    title: help,
                    prefixIcon: Image.asset(
                      icHelp,
                      width: 24.w,
                      height: 24.h,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      ),
                    ),
                    onTap: () {}),
                addHeight(15.h),
                CustomElevateddButton(
                    title: about,
                    prefixIcon: Image.asset(
                      icAboud,
                      width: 24.w,
                      height: 24.h,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 93.w),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      ),
                    ),
                    onTap: () {}),
                addHeight(55.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
