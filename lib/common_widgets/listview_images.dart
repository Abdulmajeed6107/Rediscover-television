import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_john/const/const.dart';

class CarouselSliderComments extends StatefulWidget {
  final List<String> images;
  const CarouselSliderComments({
    super.key,
    required this.images,
  });

  @override
  State<CarouselSliderComments> createState() => _CarouselSliderScreenState();
}

class _CarouselSliderScreenState extends State<CarouselSliderComments> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      imgElizabethcoments,
      imgPatriciacoments,
      
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
          height: 198.h,
          width: 240.w,
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
       
      ],
    );
  }
}
