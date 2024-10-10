import 'package:flutter/cupertino.dart';
import 'package:travel_app/services/firebase_services.dart';


class AuthController {
   TextEditingController txtemail = TextEditingController();
   TextEditingController txtpass = TextEditingController();

   void signUp(String email, String pass){
     AuthServices.authServices.createAcc(email, pass);
   }

   Future<String> signIn(String email,String pass)
   {
     return  AuthServices.authServices.loginApp(email, pass);
   }
}