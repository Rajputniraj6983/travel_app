import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: const Center(
                      child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  )),
                ),
                const Text(
                  'Schedule',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: const Center(
                      child: Icon(
                    Icons.notification_add,
                    size: 25,
                    color: Colors.black,
                  )),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200]),
            child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(2001),
              lastDate: DateTime(2047),
              onDateChanged: (value) {},
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'My Schedule',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                      color: Colors.blue[300],
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 130,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/image/popular/IMG-20240925-WA0057.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.calendar_month,color: Colors.grey,size: 18,),SizedBox(width: 8),
                          Text('01 january 2024',style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ],
                      ),SizedBox(height: 8),
                      Row(
                        children: [
                          Text('Niladri Reservior',style: TextStyle(color: Colors.black,fontSize: 15),),
//Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,),
                        ],
                      ),SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.grey,size: 18,),SizedBox(width: 5),
                          Text('Tekergat,Sunamgnj',style: TextStyle(color: Colors.black,fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),SizedBox(height: 10),
          Container(
            height: 130,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/image/popular/IMG-20240925-WA0057.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.calendar_month,color: Colors.grey,size: 18,),SizedBox(width: 8),
                          Text('01 january 2024',style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ],
                      ),SizedBox(height: 8),
                      Row(
                        children: [
                          Text('Niladri Reservior',style: TextStyle(color: Colors.black,fontSize: 15),),
//Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,),
                        ],
                      ),SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.grey,size: 18,),SizedBox(width: 5),
                          Text('Tekergat,Sunamgnj',style: TextStyle(color: Colors.black,fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
