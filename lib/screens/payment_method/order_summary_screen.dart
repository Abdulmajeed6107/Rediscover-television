import '../../const/const.dart';

class OrderSummaryScreen extends StatefulWidget {
  const OrderSummaryScreen({super.key});

  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkMode ? containerColor : backgrColor,
        body: Column(
          children: [
            addHeight(45.h),
            Padding(
              padding: const EdgeInsets.only(left: 32.5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                     icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: wColor,
                    ),)
                  ],
                ),
              ),
            ),
            addHeight(30.h),
            Text(
              pmethods,
              style:
                  myStyle(color: wColor, size: 24.sp, weight: FontWeight.w700),
            ),
            addHeight(10.h),
            SizedBox(
              height: 40.h,
              width: 255.w,
              child: Text(
                selectmethod,
                textAlign: TextAlign.center,
                style: myStyle(
                    color: lgColor, size: 14.sp, weight: FontWeight.w500),
              ),
            ),
            addHeight(18.h),
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 14, bottom: 14),
              width: 327.w,
              height: 80.h,
              color: bgColor,
              child: Row(
                children: [
                  Image.asset(
                    imgMasterCard,
                    width: 50.w,
                    height: 50.h,
                  ),
                  addWidth(25.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mastercard,
                        style: myStyle(
                            color: wColor,
                            size: 13.sp,
                            weight: FontWeight.w500),
                      ),
                      addHeight(10.h),
                      Text(
                        mastercardtext,
                        style: myStyle(
                            color: lgColor,
                            size: 13.sp,
                            weight: FontWeight.w500),
                      ),
                    ],
                  ),
                  addWidth(119.w),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: wColor,
                    size: 18,
                  ),
                ],
              ),
            ),
            //second container starts from here
            addHeight(20.h),
            Container(
              color: bgColor,
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 14, bottom: 14),
              width: 327.w,
              height: 80.h,
              child: Row(
                children: [
                  Image.asset(
                    imgVisa,
                    width: 50.w,
                    height: 50.h,
                  ),
                  addWidth(25.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        visa,
                        style: myStyle(
                            color: wColor,
                            size: 13.sp,
                            weight: FontWeight.w500),
                      ),
                      addHeight(10.h),
                      Text(
                        visacardtext,
                        style: myStyle(
                            color: lgColor,
                            size: 13.sp,
                            weight: FontWeight.w500),
                      ),
                    ],
                  ),
                  addWidth(118.w),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: wColor,
                    size: 18,
                  ),
                ],
              ),
            ),
            addHeight(324.h),
            RoundedButton(
              btname: proceed,
              textStyle:
                  myStyle(size: 14.sp, weight: FontWeight.w500, color: wColor),
            )
          ],
        ),
      ),
    );
  }
}
