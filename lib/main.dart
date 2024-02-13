import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kpvs/module/deshboard/view/screen/dashboard_screen.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'module/SplashScreen.dart';
import 'module/auth/view/screen/Login_Screen.dart';
import 'module/auth/view/screen/OTP_Screen.dart';
import 'module/auth/view/screen/singUp_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
// await flutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(builder: (context, child) {
     return GetMaterialApp(
       debugShowCheckedModeBanner: false,
         title: 'Flutter Demo',
         theme: ThemeData(
         ),
        //  home:  LoginScreen(),
       initialRoute: '/splash', //Set initial route.
       getPages: [
         GetPage(name: '/splash', page: () => SplashScreen()),
         GetPage(name: '/login', page: () => LoginScreen()),
         GetPage(name: '/otp', page: () => OTPScreen()),
         GetPage(name: '/singUp', page:() =>  SingUPScreen()),
         GetPage(name: '/dashBoard', page: () => DashBoardScreen()),
       ],
     );
   },);
  }
}


