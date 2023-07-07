import 'package:flutter/material.dart';
import 'package:flutter_application_john/const/const.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addHeight(60.h),
                Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: IconButton(
                      onPressed:() {Navigator.of(context).pop();},
                      icon: 
                      Icon(Icons.arrow_back_ios, color: wColor, size: 20)),
                  ),
                  addWidth(82.w),
                Text(
                  history,
                  style: myStyle(
                      color: wColor, weight: FontWeight.w500, size: 18.sp),
                )
              ],
            ),
            addHeight(16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: rColor,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(7))),
                    width: 163.5.w,
                    height: 40.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(rColor)),
                        onPressed: () {},
                        child: Text(watching))),
                Container(
                  decoration: BoxDecoration(
                      color: lightpColor,
                      borderRadius: BorderRadius.all(Radius.zero)),
                  width: 163.5.w,
                  height: 40.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(lightpColor)),
                    onPressed: () {},
                    child: Text(
                      downloaded,
                      style: myStyle(color: rColor),
                    ),
                  ),
                ),
              ],
            ),
            addHeight(20.h),
            HistoryComponent(
              image: Image.asset(imgMulan),
              title: mulan,
              subtitle: historydate,
              time: historytime,
            ),
            addHeight(20.h),
            HistoryComponent(
              image: Image.asset(imgDune),
              title: dune,
              subtitle: historydate,
              time: historytime,
            ),
            addHeight(20.h),
            HistoryComponent(
              image: Image.asset(imgQuietPlaceLittle),
              title: quietplace,
              subtitle: historydate,
              time: historytime,
            ),
            addHeight(20.h),
            HistoryComponent(
              image: Image.asset(imgCreulla),
              title: cruella,
              subtitle: historydate,
              time: historytime,
            ),
            addHeight(20.h),
            HistoryComponent(
              image: Image.asset(img1917),
              title: '1917',
              subtitle: historydate,
              time: historytime,
            ),
            addHeight(20.h),
            HistoryComponent(
              image: Image.asset(imgNobody),
              title: nobody,
              subtitle: historydate,
              time: historytime,
            ),
          ],
        ),
      ),
    );
  }
}
