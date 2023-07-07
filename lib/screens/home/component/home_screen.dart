import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_john/const/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    imgQuietPlace,
    quietplace,
    imgFlash,
    tflash,
    imgBlackLightening,
    blacklight
  ];
  
  final List<String> actorNames = [
    johnKrasinski,
    emilyBlunt,
    cillianMurphy,
    millicentSimmonds,
    sPereiraOlson,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(imgJohnWich4),
                Positioned(
                    top: 320,
                    child: Container(
                      height: 131.h,
                      width: 375.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(
                                0.1), // Adjust the opacity as per your requirement
                            Colors.black.withOpacity(0.9),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: 365.h,
                    left: 24.w,
                    child: Text(
                      johnwickchapter4,
                      style: myStyle(
                          color: wColor, size: 20.sp, weight: FontWeight.w700),
                    )),
                Positioned(
                    top: 392.h,
                    left: 24.w,
                    child: Row(
                      children: [
                        Text(
                          action,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                        addWidth(10.w),
                        Text(
                          ".",
                          style: myStyle(
                              color: lgColor,
                              size: 20.sp,
                              weight: FontWeight.w900),
                        ),
                        addWidth(10.w),
                        Text(
                          drama,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                        addWidth(10.w),
                        Text(
                          ".",
                          style: myStyle(
                              color: lgColor,
                              size: 20.sp,
                              weight: FontWeight.w900),
                        ),
                        addWidth(10.w),
                        Text(
                          adventure,
                          style: myStyle(
                              color: lgColor,
                              size: 12.sp,
                              weight: FontWeight.w500),
                        ),
                      ],
                    )),
                Positioned(
                  right: 22.w,
                  top: 385.h,
                  child: Image.asset(
                    icPlay,
                    width: 35.w,
                    height: 35.h,
                  ),
                ),
                Positioned(
                  left: 25.w,
                  top: 424.h,
                  child: Image.asset(
                    icSIndicator,
                    width: 35.w,
                    height: 9.h,
                  ),
                ),
              ],
            ),
            addHeight(32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addWidth(24.w),
                Text(
                  latests,
                  style: myStyle(
                      color: wColor, size: 18.sp, weight: FontWeight.w500),
                ),
                addWidth(193.w),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      seall,
                      style: myStyle(
                          color: wColor, size: 18.sp, weight: FontWeight.w500),
                    )),
                addWidth(12.33.w),
                Image.asset(
                  icGreaterThan,
                  width: 5.24.w,
                  height: 10.56.h,
                )
              ],
            ),
            addHeight(12.h),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: EdgeInsets.only(left: 15),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: HomeSliderWidget(),
                  );
                },
              ),
            ),
            addHeight(32.h),
            Center(
              child: Container(
                width: 327.w,
                height: 134.h,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    addWidth(8.w),
                    Image.asset(
                      imgVikings,
                      width: 81.w,
                      height: 112.w,
                    ),
                    addWidth(15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addHeight(10.h),
                        Text(
                          seasons,
                          style: myStyle(
                              color: lgColor,
                              size: 11.sp,
                              weight: FontWeight.w500),
                        ),
                        addHeight(14.h),
                        Text(
                          vikings,
                          style: myStyle(
                              color: wColor,
                              size: 16.sp,
                              weight: FontWeight.w500),
                        ),
                        addHeight(8.h),
                        Row(
                          children: [
                            Text(
                              action,
                              style: myStyle(
                                  color: lgColor,
                                  size: 11.sp,
                                  weight: FontWeight.w500),
                            ),
                            addWidth(10.w),
                            Text(
                              ".",
                              style: myStyle(
                                  color: lgColor,
                                  size: 14.sp,
                                  weight: FontWeight.w900),
                            ),
                            addWidth(10.w),
                            Text(
                              drama,
                              style: myStyle(
                                  color: lgColor,
                                  size: 11.sp,
                                  weight: FontWeight.w500),
                            ),
                            addWidth(10.w),
                            Text(
                              ".",
                              style: myStyle(
                                  color: lgColor,
                                  size: 14.sp,
                                  weight: FontWeight.w900),
                            ),
                            addWidth(10.w),
                            Text(
                              adventure,
                              style: myStyle(
                                  color: lgColor,
                                  size: 11.sp,
                                  weight: FontWeight.w500),
                            ),
                          ],
                        ),
                        addHeight(18.h),
                        Row(
                          children: [
                            Image.asset(
                              icPlay,
                              width: 30.w,
                              height: 30.h,
                            ),
                            addWidth(145.w),
                            Image.asset(
                              icStar,
                              width: 16.w,
                              height: 16.h,
                            ),
                            addWidth(3.w),
                            Text(
                              rating,
                              style: myStyle(
                                  color: wColor,
                                  size: 12.sp,
                                  weight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            addHeight(32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addWidth(24.w),
                Text(
                  pactor,
                  style: myStyle(
                      color: wColor, size: 18.sp, weight: FontWeight.w500),
                ),
                addWidth(152.w),
                Text(
                  seall,
                  style: myStyle(
                      color: lgColor, size: 14.sp, weight: FontWeight.w500),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: lgColor,
                      size: 16,
                    )),
              ],
            ),
            addHeight(12.h),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CarouselSliderScreen(
                      images: images,
                      actorNames: actorNames,
                    );
                  },
                ),
              ),
            ),
            addHeight(27.h),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                trends,
                style: myStyle(
                    color: wColor, size: 18.sp, weight: FontWeight.w500),
              ),
            ),
            addHeight(12.h),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(padding: EdgeInsets.only(right: 25),
                    child: HomeSliderWidget(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
