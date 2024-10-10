import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screen/signin_screen.dart';
class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: Colors.blue),
            child: Image.asset(
              'assets/image/intro3.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            "Please don't take trip,\n     trips take people",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),const SizedBox(
            height: 15,
          ),
          const Text(
            '   To get the best of your adventure you just\nneed to leave and go where you like. we are  \n            waiting for you',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
          ),const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFd1ecff)),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFd1ecff)),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF24BAEC)),
              ),
            ],
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
                Get.to(const Signin(),transition: Transition.rightToLeft);
              },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
