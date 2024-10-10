import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey[200],
                    child: const Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Colors.black,
                    )),
                  ),
                ),SizedBox(width: 90),
                Text(
                  'Popular Places',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
         const  Padding(
            padding: const EdgeInsets.all(15),
            child: Text('All Popular Places',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const  EdgeInsets.all(5),
            child: Container(width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey[400],
              ),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 160,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/image/popular/IMG-20240925-WA0057.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                  const Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Niladri Reservior',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,size: 15,color: Colors.white,),SizedBox(width: 5),
                          Text('Surat,Gujarat',style: TextStyle(color: Colors.white70),),
                        ],
                      ),
                    ),
                  ),
                  Align(alignment: Alignment.centerLeft,child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text('4900/',style: TextStyle(color: Colors.blue[400],fontSize: 15),),
                        Text('person',style: TextStyle(color: Colors.grey[200],fontSize: 15),),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
