import '../const/const.dart';

class VikingRiviewScreen extends StatefulWidget {
  const VikingRiviewScreen({super.key});

  @override
  State<VikingRiviewScreen> createState() => _VikingRiviewScreenState();
}

class _VikingRiviewScreenState extends State<VikingRiviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrColor,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(28),
              bottomLeft: Radius.circular(28)),
        ),
        child: Column(
          children: [
            addHeight(54.h),
            Padding(
              padding: const EdgeInsets.only(left: 37.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: wColor,
                  ),
                  addWidth(65.w),
                  Text(
                    vikings,
                    style: myStyle(
                        color: lgColor, size: 18.sp, weight: FontWeight.w500),
                  ),
                  Text(
                    ' / ',
                    style: myStyle(color: lgColor),
                  ),
                  Text(
                    reviews,
                    style: myStyle(
                        color: wColor, size: 18.sp, weight: FontWeight.w500),
                  )
                ],
              ),
            ),
            addHeight(30.h),
            Text(
              treview,
              style:
                  myStyle(color: wColor, size: 16.sp, weight: FontWeight.w500),
            ),
            addHeight(20.h),
            Image.asset(
              imgMarySmithText,
              width: 375.w,
              height: 218.h,
            ),
            addHeight(32.h),
            Text(
              oreview,
              style:
                  myStyle(color: wColor, size: 16.sp, weight: FontWeight.w500),
            ),
            addHeight(10.h),
            Image.asset(
              imgelizebethJonesText,
              width: 375.w,
              height: 158.h,
            ),
            addHeight(10.h),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  imBarbaraBrownText,
                  width: 375.w,
                  height: 178.h,
                ),
                Positioned(
                  top: 140.h,
                  child: Container(
                    decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(28),
                            bottomRight: Radius.circular(28))),
                    width: 375.w,
                    height: 85.h,
                    child: Row(
                      children: [
                        addWidth(15.w),
                        Image.asset(
                          imgSophiaTaylor,
                          width: 32.w,
                          height: 32.w,
                        ),
                        addWidth(10.w),
                        SizedBox(
                          width: 277.w,
                          height: 19.h,
                          child: TextFormField(
                            cursorColor: lgColor,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: 'Type review here ....',
                                hintStyle:
                                    myStyle(color: lgColor, size: 14.sp)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
