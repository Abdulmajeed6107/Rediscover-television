import '../../const/const.dart';

class OrderSummaryScreen extends StatefulWidget {
  const OrderSummaryScreen({super.key});

  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: containerColor,
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHeight(27.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    orderSummary,
                    style: myStyle(
                        color: wColor, weight: FontWeight.w500, size: 18.sp),
                  )
                ],
              ),
              addHeight(32.h),
              Row(
                children: [
                  Text(
                    plan,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w500, size: 14.sp),
                  ),
                  Spacer(),
                  Container(
                    height: 24.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                      color: yColor,
                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                    ),
                    child: Row(
                      children: [
                        addWidth(10.w),
                        Image.asset(
                          icCrown,
                          color: backgrColor,
                          width: 9.27.w,
                          height: 7.82.h,
                        ),
                        addWidth(7.4.w),
                        Text(premium, style: myStyle(
                          color: containerColor, size: 11.sp,
                          weight: FontWeight.w500
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              addHeight(20.h),
              Row(
                children: [
                  Text(
                    duration,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w500, size: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    '1 Year',
                    style: myStyle(
                        color: wColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
              addHeight(20.h),
              Divider(
                color: lgColor,
                thickness: 1,
              ),
              addHeight(20.h),
              Row(
                children: [
                  Text(
                    price,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w500, size: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    '\$89.99',
                    style: myStyle(
                        color: wColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
              addHeight(20.h),
               Row(
                children: [
                  Text(
                    tax,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w500, size: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    '\$8.9',
                    style: myStyle(
                        color: wColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
               addHeight(20.h),
               Row(
                children: [
                  Text(
                    discount,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w500, size: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    ' -\$ 1',
                    style: myStyle(
                        color: rColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
                addHeight(20.h),
              Divider(
                color: lgColor,
                thickness: 1,
              ),
              addHeight(20.h),
               Row(
                children: [
                  Text(
                    total,
                    style: myStyle(
                        color: lgColor, weight: FontWeight.w500, size: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    ' -\$ 97.98',
                    style: myStyle(
                        color: wColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ],
              ),
              addHeight(40.h),
              RoundedButton(btname: proceed, textStyle: myStyle(
                color: wColor, size: 14.sp, weight: FontWeight.w500
              ),)
            ],
          ),
        ),
      ),
    ));
  }
}
