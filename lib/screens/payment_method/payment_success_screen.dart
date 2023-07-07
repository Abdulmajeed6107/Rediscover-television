import '../../const/const.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({super.key});

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgrColor,
        body: Column(
          children: [
            addHeight(54.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    icCross,
                    width: 18.w,
                    height: 18.h,
                  )
                ],
              ),
            ),
            addHeight(150.h),
            Image.asset(
              imgPaymentSuccess,
              width: 101.w,
              height: 121.h,
            ),
            addHeight(29.h),
            Text(
              paysuccess,
              style:
                  myStyle(color: wColor, weight: FontWeight.w700, size: 24.sp),
            ),
            addHeight(15.h),
            SizedBox(
              width: 255.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60.h,
                    width: 265.w,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: paysuccessmes,
                          style: myStyle(
                              color: lgColor,
                              weight: FontWeight.w400,
                              size: 14.sp),
                          children: [
                            TextSpan(
                                text: premplan,
                                style: myStyle(
                                    color: yColor,
                                    size: 14.sp,
                                    weight: FontWeight.w400)),
                            TextSpan(
                              text: paymentsuccessmes2nd,
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            addHeight(232.h),
            RoundedButton(
              btname: bhome,
              textStyle:
                  myStyle(size: 14.sp, weight: FontWeight.w500, color: wColor),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder:  (context) => HomeScreen(),));
                  },
            ),
          ],
        ),
      ),
    );
  }
}
