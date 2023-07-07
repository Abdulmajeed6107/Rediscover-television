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
                    width: 24.w,
                    height: 24.h,
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
            addHeight(10.h),
            SizedBox(
              width: 255.w,
              height: 60.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    paysuccessmes,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w500, size: 14.sp),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        premplan,
                        style: myStyle(color: yColor),
                      )),
                  Text(
                    paymentsuccessmes2nd,
                    style: myStyle(
                        color: lgColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            addHeight(50.h),
            RoundedButton(
              btname: bhome,
              textStyle:
                  myStyle(size: 14.sp, weight: FontWeight.w500, color: wColor),
            )
          ],
        ),
      ),
    );
  }
}
