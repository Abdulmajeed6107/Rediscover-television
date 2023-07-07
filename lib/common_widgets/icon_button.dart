import 'package:flutter_application_john/const/const.dart';

// ignore: must_be_immutable
class IconCustomButton extends StatelessWidget {
  
  final Icon? icon;
  VoidCallback? callback;
  IconCustomButton(
      {
      this.icon,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    TextButton(onPressed: (){}, child: Image.asset(icBack, width: 40, height: 40,)),
                  ],
    );
  }
}
