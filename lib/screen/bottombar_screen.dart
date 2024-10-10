import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screen/chat_screen.dart';
import 'package:travel_app/screen/home_page.dart';

import 'profile_screen.dart';
import 'schedule_page.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(backgroundColor: Colors.white,
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
          controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Calendar'),
            NavigationDestination(icon: Icon(Icons.message), label: 'Messages'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.Screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final Screen = [
  HomePage(),
  SchedulePage(),
    ChatScreen(),
  ProfileScreen(),
  ];
}