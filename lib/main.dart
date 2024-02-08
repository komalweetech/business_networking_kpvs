import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Screen/SplashScreen.dart';
import 'package:kpvs/Screen/auth/LoginScreen.dart';
import 'package:kpvs/Screen/auth/OTPScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kpvs/Utils/ScreenUtils.dart';
import 'firebase_options.dart';

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
     return MaterialApp(
         title: 'Flutter Demo',
         theme: ThemeData(
         ),
        //  home:  LoginScreen(),
          initialRoute: ScreenUtils.SplashScreen,
         routes: {
          ScreenUtils.LoginScreen:(context) => LoginScreen(),
          ScreenUtils.GetOtpScreen:(context) => OTPScreen(),
          ScreenUtils.SplashScreen:(context) => SplashScreen()
         },
     );
   },);
  }
}


