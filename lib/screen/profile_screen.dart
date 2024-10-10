import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey[200],
                    child: const Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Colors.black,
                    )),
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey[200],
                    child: const Center(
                        child: Icon(
                      Icons.edit,
                      size: 15,
                      color: Colors.lightBlue,
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/image/logo.png'),
            ),
            const Text(
              'Leonardo',
              style: TextStyle(
                  color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
            ),
            const Text(
              'leonardo@gmail.com',
              style: TextStyle(
                  color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 128,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Reward Points',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '360',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  endIndent: 2,
                  color: Colors.grey,
                ),
                Container(
                  height: 100,
                  width: 128,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Travels Trips',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '238',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  endIndent: 2,
                  color: Colors.grey,
                ),
                Container(
                  height: 100,
                  width: 128,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bucket List ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '473',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 465,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
              ),child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                     InkWell(onTap: () {
                       Get.to(editscreen(),transition: Transition.leftToRight);
                     },
                       child: Container(height: 60,
                        child: const Row(
                        children: [
                          Icon(Icons.person,size: 30,color: Colors.grey,),Spacer(),
                          Text('Profile',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 25,color: Colors.grey,),
                        ],
                        ),
                                           ),
                     ),const Divider(thickness: 0.5,color: Colors.grey,),
                     Container(height: 60,
                      child: const Row(
                        children: [
                          Icon(Icons.bookmark_border,size: 30,color: Colors.grey,),Spacer(),
                          Text('Bookmarked',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 25,color: Colors.grey,),
                        ],
                      ),
                    ),const Divider(thickness: 0.5,color: Colors.grey,),
                     Container(height: 60,
                      child: const Row(
                        children: [
                          Icon(Icons.wordpress,size: 30,color: Colors.grey,),Spacer(),
                          Text('Previous Trips',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 25,color: Colors.grey,),
                        ],
                      ),
                    ),const Divider(thickness: 0.5,color: Colors.grey,),
                     Container(height: 60,
                      child: const Row(
                        children: [
                          Icon(Icons.settings,size: 30,color: Colors.grey,),Spacer(),
                          Text('Settings',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 25,color: Colors.grey,),
                        ],
                      ),
                    ),const Divider(thickness: 0.5,color: Colors.grey,),
                     Container(height: 60,
                      child: const Row(
                        children: [
                          Icon(Icons.verified_sharp,size: 30,color: Colors.grey,),Spacer(),
                          Text('Version',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 25,color: Colors.grey,),
                        ],
                      ),
                    ),const Divider(thickness: 0.5,color: Colors.grey,),
                     Container(height: 60,
                      child: const Row(
                        children: [
                          Icon(Icons.logout,size: 30,color: Colors.grey,),Spacer(),
                          Text('Log out',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 25,color: Colors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
