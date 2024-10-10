import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/modal/place_list.dart';
import 'package:travel_app/screen/Detail_screen.dart';
import 'package:travel_app/screen/chat_screen.dart';
import 'package:travel_app/screen/profile_screen.dart';
import 'package:travel_app/screen/schedule_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/image/logo.png'),
        ),
        title: const Text(
          "Lonardoo",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.notification_important_rounded,
              color: Colors.black,
              size: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              '    Explore the',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            const Row(
              children: [
                Text(
                  '    Beautiful',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'world!',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Destination',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 360,
              child: ListView.builder(
                itemCount: place.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(onTap: () {
                    Get.to(const DetailScreen(),transition: Transition.leftToRight, arguments: index);
                  },
                    child: Container(
                      width: 252,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white
                       // color: Colors.blueGrey[400],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 280,
                            width: 230,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  place[index]['Image'],
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                const Text(
                                  'Niladri Reservior',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.w500),
                                ),
                               const  Spacer(),
                               const  Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                InkWell(onTap: () {
                                  Get.to(const DetailScreen(),transition: Transition.leftToRight, arguments: index);
                                },
                                  child: Text(
                                    place[index]['Rating'],
                                    style: const TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                               Icon(
                                Icons.location_on,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 225,
                                child: InkWell(onTap: () {
                                  Get.to(const DetailScreen(),transition: Transition.leftToRight, arguments: index);
                                },
                                  child: Text(
                                    place[index]['Place'],
                                    overflow: TextOverflow.ellipsis,
                                    style: const  TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
           const  Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Popular',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 500,
              child: GridView.builder(
                itemCount: Popular.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.8,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                      color: Colors.white
                      //Colors.blueGrey[400],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 180,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                               Popular[index]['Image'],
                                fit: BoxFit.cover,
                              )),
                        ),
                        Row(
                          children: [
                           const  Padding(
                              padding:  EdgeInsets.all(5),
                              child: Text(
                                'Niladri Reservior',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                           const  Spacer(),
                           const  Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                Popular[index]['Rating'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 150,
                              child: Text(
                                Popular[index]['Place'],
                                overflow: TextOverflow.ellipsis,
                                style:const  TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
