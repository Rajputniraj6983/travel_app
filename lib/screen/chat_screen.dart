import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }
}
