import 'package:flutter_application_john/const/const.dart';

// ignore: must_be_immutable
class CustomSwitchdButton extends StatefulWidget {
  CustomSwitchdButton({super.key});

  @override
  State<CustomSwitchdButton> createState() => _CustomSwitchdButtonState();
}

class _CustomSwitchdButtonState extends State<CustomSwitchdButton> {
  final CustomSwitchController _controller = CustomSwitchController();
  var _state = true;

  void _enable() => _controller.enable();

  void _disable() => _controller.disable();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        this._state = _controller.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomSwitchWidget(
      activeColor: rColor,
      controller: _controller,
      onChange: (value) {
        if (value)
          _disable();
        else
          _enable();
      },
    );
  }
}
