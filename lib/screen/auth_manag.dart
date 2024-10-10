import 'package:flutter/material.dart';
import 'package:travel_app/screen/bottombar_screen.dart';
import 'package:travel_app/screen/home_page.dart';
import 'package:travel_app/screen/signin_screen.dart';
import 'package:travel_app/services/firebase_services.dart';

class AuthManag extends StatelessWidget {
  const AuthManag({super.key});

  @override
  Widget build(BuildContext context) {
    return (AuthServices.authServices.getCurrentUser() == null)
        ? const Signin()
        : const HomePage();
  }
}
