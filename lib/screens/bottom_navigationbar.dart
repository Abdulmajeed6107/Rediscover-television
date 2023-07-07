import 'package:flutter_application_john/const/const.dart';
import 'package:flutter_application_john/screens/search_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> _widget = const [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];
  int pos = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Container(
          height: 60.h,
          // set the height to 60 height units

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                4.r // set the top border radius to 20 width units
                ),
            color: bgColor,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: containerColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor:
                rColor, // set the color of the selected item to white
            unselectedItemColor:
                gColor, // set the color of the unselected items to grey
               selectedIconTheme: IconThemeData(color: rColor),
            onTap: (p) {
              setState(() {
                pos = p;
              });
            },
            currentIndex: pos,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  icHome,
                  width: 27.w,
                  height: 27.h,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    icSearch,
                    height: 27.h,
                    width: 27.w,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    icCam,
                    height: 27.h,
                    width: 27.w,
                  ),
                  label: 'EPG Live'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    icHuman,
                    width: 27.w,
                    height: 27.h,
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
        body: _widget[pos],
      ),
    );
  }
}
