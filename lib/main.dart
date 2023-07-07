
import 'package:flutter_application_john/controller/auth_conteroller.dart';
import 'package:flutter_application_john/routes.dart';
import 'package:provider/provider.dart';

import 'const/const.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {

      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthController()),
         
        ],
        child:const  MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.onGenerateRoute,
          initialRoute: '/',
          home: BottomNavigationScreen(),
        ),
      );
      },
       
    );
  }
}
