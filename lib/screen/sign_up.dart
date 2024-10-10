import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:travel_app/controller/auth_controller.dart';
import 'package:travel_app/screen/home_page.dart';
import 'package:travel_app/services/firebase_services.dart';
import 'package:travel_app/services/google_auth_services.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          height: 30,
          width: 30,
          decoration: ShapeDecoration.fromBoxDecoration(
            const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFFF7F7F9)),
          ),
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [const SizedBox(height: 40),
            const Text(
              "Sign up now",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
            ), const SizedBox(height: 20),
            const Text(
              "Please fill the details and create account",
              style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
            ),const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: controller.txtemail,
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),focusColor: const Color(0xFFF7F7F9),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: controller.txtpass,
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),focusColor: const Color(0xFFF7F7F9),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),focusColor: const Color(0xFFF7F7F9),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                ),
              ),
            ),const SizedBox(height: 30),
            Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF24BAEC),
              ),
              child: Center(
                child: InkWell(onTap: () {
                  AuthServices.authServices.loginApp(controller.txtemail.text, controller.txtpass.text);
                  Get.to(const HomePage(),transition: Transition.leftToRight);
                },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),const SizedBox(height: 30),
            const Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),SizedBox(width: 5),
                Text("Sign in",style: TextStyle(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),const SizedBox(height: 10),
            const Text("Or connect",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
            const SizedBox(height: 100),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInButton(Buttons.google, onPressed: (){
                  GoogleAuthServices.googleAuthServices.Googlesinginacc();
                  Get.offAndToNamed('/home',);
                }),
                //Image.asset('assets/image/facebook.png'),const SizedBox(width: 13),
                Image.asset('assets/image/Instagram.png'),const SizedBox(width: 13),
                Image.asset('assets/image/twitter.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
