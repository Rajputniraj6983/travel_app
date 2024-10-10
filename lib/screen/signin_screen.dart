import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/auth_controller.dart';
import 'package:travel_app/screen/home_page.dart';
import 'package:travel_app/services/firebase_services.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

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
          children: [const SizedBox(height: 50),
            const Text(
              "Sign in now",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
            ), const SizedBox(height: 20),
            const Text(
              "Please sign in to continue our app",
              style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
            ),const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: controller.txtemail,
                decoration: InputDecoration(
                  hintText: 'E-mail',
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
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),focusColor: const Color(0xFFF7F7F9),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                ),
              ),
            ),
            const ListTile(
              trailing: Text("Forget Password?",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 15),),
            ),const SizedBox(height: 20),
            Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF24BAEC),
              ),
              child: Center(
                child: InkWell(onTap: () {
                  AuthServices.authServices.createAcc(controller.txtemail.text, controller.txtpass.text);
                  controller.txtemail.clear();
                  controller.txtpass.clear();
                    Get.to(const HomePage(),transition: Transition.leftToRight);
                },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),const SizedBox(height: 40),
             Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),SizedBox(width: 5),
                InkWell(onTap: () {
                  Get.offAndToNamed('/SingUp',);
                },child: Text("Sign up",style: TextStyle(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)),
              ],
            ),const SizedBox(height: 10),
            const Text("Or connect",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),SizedBox(height: 100),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image/facebook.png'),const SizedBox(width: 13),
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
