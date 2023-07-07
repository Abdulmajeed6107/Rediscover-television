import '../../const/const.dart';

class HomeSliderWidget extends StatelessWidget {
  const HomeSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imgFlash,
          width: 115.w,
          height: 172.h,
        ),
        addHeight(8.h),
        Text(
          blackwidow,
          style: myStyle(color: wColor, size: 14.sp, weight: FontWeight.w500),
        ),
        addHeight(8.h),
        Row(
          children: [
            Text(
              time,
              style:
                  myStyle(color: wColor, size: 12.sp, weight: FontWeight.w500),
            ),
            addWidth(46.w),
            Image.asset(
              icStar,
              width: 16.w,
              height: 16.h,
            ),
            addWidth(3.w),
            Text(
              rating,
              style:
                  myStyle(color: wColor, size: 12.sp, weight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}
