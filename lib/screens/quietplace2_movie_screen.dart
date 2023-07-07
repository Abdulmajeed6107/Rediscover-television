import 'package:flutter_application_john/const/const.dart';

class QuietPlaceMovie2 extends StatefulWidget {
  const QuietPlaceMovie2({super.key});

  @override
  State<QuietPlaceMovie2> createState() => _QuietPlaceMovie2State();
}

class _QuietPlaceMovie2State extends State<QuietPlaceMovie2> {
  //lists for images actors and names
  final List<String> images = [
    imgJohnKrasinski,
    imgEmilyBlunt,
    imgCillianMurphy,
    imgMillicentSimmonds,
    imgspereiraolson,
  ];
  final List<String> actorNames = [
    johnKrasinski,
    emilyBlunt,
    cillianMurphy,
    millicentSimmonds,
    sPereiraOlson,
  ];
  // lists for comments slider
  final List<String> imagescomments = [
    imgElizabethcoments,
    imgPatriciacoments,
  ];
  final List<String> actorcomments = [elizabethJones, imgPatriciacoments];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // this portion upper 
            Container(
              width: 375.w,
              height: 400.h,
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgQuietPlacePoster),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addHeight(60.h),
                  Row(
                    children: [
                      addWidth(24.w),
                      Container(
                        width: 36.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: wColor,
                              size: 18.sp,
                            )),
                      ),
                      addWidth(255.w),
                      Container(
                        width: 36.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(25.r)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_sharp,
                              color: wColor,
                              size: 18.sp,
                            )),
                      ),
                    ],
                  ),
                  addHeight(173.h),
                  Container(
                    height: 131.h,
                    width: 375.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(
                              0.1), // Adjust the opacity as per your requirement
                          Colors.black.withOpacity(0.6),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addHeight(45.h),
                          Text(
                            quietplacepart,
                            style: myStyle(
                                color: wColor,
                                size: 20.sp,
                                weight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Text(
                                '2021',
                                style: myStyle(
                                    color: lgColor,
                                    size: 14.sp,
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
                                horror,
                                style: myStyle(
                                    color: lgColor,
                                    size: 14.sp,
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
                                time,
                                style: myStyle(
                                    color: lgColor,
                                    size: 14.sp,
                                    weight: FontWeight.w500),
                              ),
                              addWidth(133.w),
                              Image.asset(
                                icPlay,
                                width: 44.w,
                                height: 44.h,
                              ),
                            ],
                          ),
                          // addHeight(4.h),
                          Row(
                            children: [
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
                                    size: 14.sp,
                                    weight: FontWeight.w500),
                              ),
                              addWidth(3.w),
                              Text(
                                '(132K)',
                                style: myStyle(
                                    color: lgColor,
                                    size: 14.sp,
                                    weight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // this portion for story and descrption
            addHeight(32.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    storytitle,
                    style: myStyle(
                        color: wColor, size: 18.sp, weight: FontWeight.w500),
                  ),
                  addHeight(12.h),
                  SizedBox(
                    width: 327.w,
                    height: 100.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          storyquietplace,
                          textAlign: TextAlign.justify,
                          style: myStyle(
                              color: lgColor, size: 14.sp, weight: FontWeight.w500),
                        ),
                        Text(
                          more,
                          textAlign: TextAlign.start,
                          style: myStyle(
                              color: rColor, size: 14.sp, weight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  addHeight(40.h),
                  // Here it is starting Gallery part
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        gallery,
                        style: myStyle(
                            color: wColor, size: 18.sp, weight: FontWeight.w500),
                      ),
                      addWidth(188.w),
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
                            size: 16.sp,
                          )),
                    ],
                  ),
                  addHeight(12.h),
                  Stack(
                    children: [
                      Image.asset(
                        imgGalleryGirl,
                        width: 327.w,
                        height: 190.h,
                      ),
                      Positioned(
                          top: 83.h,
                          left: 151.w,
                          child: Image.asset(
                            icPlayButWhite,
                            width: 35.w,
                            height: 35.h,
                          ))
                    ],
                  ),
                  addHeight(40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        cast,
                        style: myStyle(
                            color: wColor, size: 18.sp, weight: FontWeight.w500),
                      ),
                      addWidth(208.w),
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
                            size: 16.sp,
                          )),
                    ],
                  ),
                  addHeight(12.h),
                  Container(
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
                  addHeight(30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        reviews,
                        style: myStyle(
                            color: wColor, size: 18.sp, weight: FontWeight.w500),
                      ),
                      addWidth(183.w),
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
                  CarouselSliderComments(
                    images: [],
                  ),
                  addHeight(40.h),
                  Text(
                    similar,
                    style: myStyle(
                        color: wColor, size: 18.sp, weight: FontWeight.w500),
                  ),
                  addHeight(12.h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return SliderWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
            addHeight(20.h),
          ],
        ),
      ),
    );
  }
}
