import '../const/const.dart';

class MovieCarouselItem extends StatelessWidget {
  final String imagePath;
  final String movieName;
  final String movieTime;
  final String movieRating;

  const MovieCarouselItem({super.key, 
    required this.imagePath,
    required this.movieName,
    required this.movieTime,
    required this.movieRating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115.w,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          addHeight(8.h),
          Text(
            movieName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
         addHeight(4.h),
          Text(
            movieTime,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
           addHeight(4.h),
          Text(
            movieRating,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
