import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screen/intro_screen3.dart';
class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
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
              'assets/image/intro 2.png',
              fit: BoxFit.cover,
            ),
          ), const SizedBox(height: 40),
          const Text(
            "It's a big world out \n     there go explore",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),const SizedBox(height: 15,),
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
              SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF24BAEC)),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFd1ecff)),
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
                Get.to(const IntroScreen3(),transition: Transition.rightToLeft);
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
