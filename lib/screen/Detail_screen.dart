import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modal/place_list.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Image.asset(
              place[index]['Image'],
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(radius: 15,backgroundColor: Colors.blueGrey,child:Center(child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.white,)),),
              Text('Details',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 15),),
              CircleAvatar(radius: 15,backgroundColor: Colors.blueGrey,child:Center(child: Icon(Icons.bookmark_border,size: 20,color: Colors.white,)),),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const  Row(
                    children: [
                      Text(
                        'Niladri Reservior',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/image/logo.png'),
                      )
                    ],
                  ),
                   Text(
                     place[index]['Place'],
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                 const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.grey,
                      ),
                      Text(
                      place[index]['Location'],
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                     const  Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.yellow,
                      ),
                     const  SizedBox(
                        width: 5,
                      ),
                      Text(
                        place[index]['Rating'],
                        style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      const Text(
                        '4700/person',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'About Destination',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 22),
                  ),
                  const Text(
                    'You will get a complete travel packages on tha beaches. packages on the form of online tickets,recommended Hotel rooms  Transportation, Have you ever been on holiday to the greek ETC...',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        letterSpacing: 1),
                  ),const SizedBox(height: 20),const Spacer(),
                  Container(
                    height: 60,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: const Center(
                        child: Text(
                      'Book Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
