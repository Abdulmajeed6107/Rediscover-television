import '../../const/const.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgrColor,
        body: Column(
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
                ],
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
              color: containerColor,
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
                  Spacer(),
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
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 14, bottom: 14),
              width: 327.w,
              height: 80.h,
              color: containerColor,
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
                  Spacer(),
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
              onTap: () {
                
                   showModalBottomSheet(context: context,
                    builder: (context) => OrderSummaryScreen(),);
              },
              btname: addcard,
              textStyle:
                  myStyle(size: 14.sp, weight: FontWeight.w500, color: wColor),
            )
          ],
        ),
      ),
    );
  }
}
