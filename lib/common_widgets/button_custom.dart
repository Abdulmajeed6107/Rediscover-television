import 'package:flutter_application_john/const/const.dart';

// ignore: must_be_immutable
class RoundedButton extends StatelessWidget {
  final String btname;
  final Icon? icon;
  final Color? lgColor;
  final TextStyle? textStyle;
  VoidCallback? onTap;
  RoundedButton(
      {required this.btname,
      this.icon,
      this.lgColor,
      this.textStyle,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 44.h,
      child: ElevatedButton(
        onPressed: () {
          onTap!();
        },
        child: icon != null
            ? Row(
                children: [
                  icon!,
                  Text(
                    btname,
                    style: textStyle,
                  )
                ],
              )
            : Text(
                btname,
                style: textStyle,
              ),
        style: ElevatedButton.styleFrom(
            primary: rColor,
            shadowColor: rColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            )),
      ),
    );
  }
}
