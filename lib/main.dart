import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kpvs/module/aboutUs_screen/view/screen/aboutUs_screen.dart';
import 'package:kpvs/module/business_screen/view/screen/all_business_card_screen.dart';
import 'package:kpvs/module/contact_us/view/screen/contactUs_screen.dart';
import 'package:kpvs/module/deshboard/view/screen/dashboard_screen.dart';
import 'package:kpvs/module/group/view/screen/group_screen.dart';
import 'package:kpvs/module/home/view/screen/home_screen.dart';
import 'package:kpvs/module/settings/view/screen/settings_screen.dart';
import 'package:kpvs/module/users/view/Screen/users_screen.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'module/SplashScreen.dart';
import 'module/auth/view/screen/Login_Screen.dart';
import 'module/auth/view/screen/OTP_Screen.dart';
import 'module/auth/view/screen/singUp_screen.dart';
import 'module/business_screen/view/screen/add_business.dart';

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
         //Splash Screen
         GetPage(name: '/splash', page: () => const SplashScreen()),
         // Auth Screen
         GetPage(name: '/login', page: () => const LoginScreen()),
         GetPage(name: '/otp', page: () => const OTPScreen()),
         GetPage(name: '/singUp', page:() => const SingUPScreen()),
         // DeshBoard screen
         GetPage(name: '/dashBoard', page: () => const DashBoardScreen()),
         // Drawer screen
         GetPage(name: '/AllBusinessScreen', page: () => const AllBusinessCardScreen()),
         GetPage(name: '/AddBusiness', page: () => const AddBusinessScreen()),
         GetPage(name: '/users', page: () => const UsersScreen()),
         GetPage(name: '/group', page: () => const GroupScreen()),
         GetPage(name: '/settings', page: () => const SettingsScreen()),
         GetPage(name: '/aboutUs', page: () => const AboutUsScreen()),
         GetPage(name: '/contactUs', page: () => const ContactUsScreen()),
         


       ],
     );
   },);
  }
}


