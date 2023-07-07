import 'package:flutter_application_john/screens/onboarding_screens/onboarding_screen_two.dart';
import 'package:flutter_application_john/screens/splash_screen.dart';

import 'const/const.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case "/homeScreen":
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case "/oSOne":
        return MaterialPageRoute(builder: (context) => const OnBoardingScreenOne());
      case "/oSTwo":
        return MaterialPageRoute(builder: (context) => const OnBoardingScreenTwo());
      case "/signinScreen":
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      case "/signupScreen":
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
     
  }
    return null;
  }
}