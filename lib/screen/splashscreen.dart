import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screen/intro_screen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: const Color(0xFF24baec),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         InkWell(onTap: () {
           Get.offAndToNamed('/intro',);
         },child: Image.asset('assets/image/simple-icons_yourtraveldottv@2x.png')),const SizedBox(height: 100),
          const Text("Travenor",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
