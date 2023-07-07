import 'package:flutter_application_john/const/const.dart';

class GenreScreen extends StatefulWidget {
  const GenreScreen({super.key});

  @override
  State<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgrColor,
          body: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                addHeight(60.h),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: wColor,
                    ),
                    addWidth(114.w),
                    Text(
                      genre,
                      style: myStyle(
                          color: wColor, size: 18.sp, weight: FontWeight.w500),
                    ),
                  ],
                ),
                addHeight(25.h),
                Expanded(
                  child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20.w,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 62.h,
                        width: 152.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: 
                            AssetImage(imgWar), fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(7.r)
                            ),
                        
                        child: Row(
                          children: [
                            addWidth(15.w),
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  side: BorderSide(color: wColor, width: 1),
                                  checkColor: wColor,
                                  activeColor: rColor,
                                  value: isChecked ?? false,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  }),
                            ),
                            Text(
                              war,
                              style: myStyle(
                                  color: wColor,
                                  size: 14.sp,
                                  weight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                addHeight(27.h),
                RoundedButton(
                  btname: results,
                  textStyle: myStyle(
                      size: 14.sp, weight: FontWeight.w500, color: wColor),
                ),
                addHeight(35.h),
              ],
            ),
          )),
    );
  }
}
