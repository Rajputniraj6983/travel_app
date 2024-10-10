import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screen/Detail_screen.dart';
import 'package:travel_app/screen/bottombar_screen.dart';
import 'package:travel_app/screen/home_page.dart';
import 'package:travel_app/screen/intro_screen.dart';
import 'package:travel_app/screen/intro_screen2.dart';
import 'package:travel_app/screen/popular_screen.dart';
import 'package:travel_app/screen/schedule_page.dart';
import 'package:travel_app/screen/sign_up.dart';
import 'package:travel_app/screen/signin_screen.dart';
import 'screen/intro_screen3.dart';
import 'screen/profile_screen.dart';
import 'screen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => const Splashscreen(),),
        GetPage(name: '/intro', page: () => const IntroScreen(),),
        GetPage(name: '/intro1', page: () => const IntroScreen2(),),
        GetPage(name: '/intro2', page: () => const IntroScreen3(),),
        GetPage(name: '/singIn', page: () =>const  Signin(),),
        GetPage(name: '/SingUp', page: () =>const SignUp(),),
        GetPage(name: '/home', page: () => const HomePage(),),
      ],
    );
  }
}


