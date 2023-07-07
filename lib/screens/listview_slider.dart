import '../const/const.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgBlackWidow,
          width: 115.w,
          height: 172.h,
        ),
        addHeight(8.h),
        Text(
          blackwidow,
          style: myStyle(color: wColor, size: 14.sp, weight: FontWeight.w500),
        )
      ],
    );
  }
}
