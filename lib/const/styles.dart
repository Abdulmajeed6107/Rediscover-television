import 'package:flutter_application_john/const/const.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle myStyle({
size, 
FontWeight weight = FontWeight.w700,
Color color = Colors.black, 
}){
return GoogleFonts.urbanist(textStyle: TextStyle(
  fontSize: size, 
  fontWeight: weight,
  color: color, 
    
));
}