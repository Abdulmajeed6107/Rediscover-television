import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_john/const/const.dart';

class CarouselSliderScreen extends StatefulWidget {
  final List<String> images;
  final List<String> actorNames;
  const CarouselSliderScreen({
    super.key,
    required this.images,
    required this.actorNames,
  });

  @override
  State<CarouselSliderScreen> createState() => _CarouselSliderScreenState();
}

class _CarouselSliderScreenState extends State<CarouselSliderScreen> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      imgJohnKrasinski,
      imgEmilyBlunt,
      imgCillianMurphy,
      imgMillicentSimmonds,
      imgspereiraolson,
    ];

    final List<String> actornames = [
      johnKrasinski,
      emilyBlunt,
      cillianMurphy,
      millicentSimmonds,
      sPereiraOlson
    ];
    List<Widget> imageSliders() {
      return images
          .map(
            (item) => Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: ClipRect(
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                 ),
              ),
            ),
          )
          .toList();
    }

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22))),
          height: 80.h,
          width: 100.w,
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              // aspectRatio: 5.0,
              // enlargeCenterPage: true,
              // scrollDirection: Axis.vertical,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imageSliders(),
          ),
        ),
        addHeight(10.h),
        SizedBox(
          width: 50.w,
          height: 36.h,
          child: Text(
            actornames[_current],
            textAlign: TextAlign.center,
            style:
                myStyle(color: lgColor, size: 12.sp, weight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
