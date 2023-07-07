import 'package:flutter/material.dart';
import 'package:flutter_application_john/const/const.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgrColor,
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHeight(59.h),
              TextField(
                cursorColor: lgColor,
                decoration: InputDecoration(
                  hintText: 'A',
                  hintStyle: myStyle(
                    color: lgColor,
                  ),
                  prefixIcon: Padding(
                    padding:  EdgeInsets.all(13.0.r),
                    child: Image.asset(
                      icSearch,
                      width: 16.w,
                      height: 16.h,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(12.0.r),
                    child: Image.asset(
                      icMike,
                      width: 16.w,
                      height: 16.h,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: lgColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7.0.r)),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: wColor)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lgColor)),
                ),
                onChanged: (value) {
                  // Handle search query
                },
              ),
              addHeight(32.h),
              Text(
                actors,
                style: myStyle(
                    color: wColor, size: 18.sp, weight: FontWeight.w500),
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
              Row(
                children: [
                  Text(
                    movie,
                    style: myStyle(
                        color: wColor, size: 18.sp, weight: FontWeight.w500),
                  ),
                  addWidth(133.w),
                  Image.asset(
                    icBar,
                    width: 24.w,
                    height: 24.h,
                  ),
                  addWidth(20.w),
                  Image.asset(
                    icBox,
                    width: 24.w,
                    height: 24.h,
                  )
                ],
              ),
              addHeight(20.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    addWidth(8.w),
                    Image.asset(
                      imgBlackLighteningful,
                      width: 109.w,
                      height: 165.w,
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
                              size: 13.sp,
                              weight: FontWeight.w400),
                        ),
                        addHeight(14.h),
                        Text(
                          blacklight,
                          style: myStyle(
                              color: wColor,
                              size: 18.sp,
                              weight: FontWeight.w500),
                        ),
                        addHeight(8.h),
                        Row(
                          children: [
                            Text(
                              action,
                              style: myStyle(
                                  color: lgColor,
                                  size: 13.sp,
                                  weight: FontWeight.w400),
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
                                  size: 13.sp,
                                  weight: FontWeight.w400),
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
                                  size: 13.sp,
                                  weight: FontWeight.w400),
                            ),
                          ],
                        ),
                        addHeight(50.h),
                        Row(
                          children: [
                            Image.asset(
                              icPlay,
                              width: 35.w,
                              height: 35.h,
                            ),
                            addWidth(115.w),
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
            ],
          ),
        ),
      ),
    );
  }
}
