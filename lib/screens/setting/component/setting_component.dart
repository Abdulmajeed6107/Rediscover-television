import 'package:flutter_application_john/const/const.dart';

// ignore: must_be_immutable
class switchElevatedButton extends StatelessWidget {
  final String title;
  final Widget? suffixIcon;
  final Widget prefixIcon;
  VoidCallback onTap;
  final Widget addWidth;
  switchElevatedButton(
      {required this.title,
      required this.prefixIcon, 
      this.suffixIcon,
      required this.addWidth,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: 44.h,
                  width: 327.w,
                  child: ElevatedButton(
                      style:const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(containerColor)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          prefixIcon,
                          
                          Text(title, style: myStyle(size: 14.sp, weight: FontWeight.w500, color: wColor),),
                         const Spacer(),
                          suffixIcon!,
                        ],
                      ),
                      ),
                );
  }
}
