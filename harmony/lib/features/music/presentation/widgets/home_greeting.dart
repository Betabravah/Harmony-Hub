import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello John Doe",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Find the best songs of 2023",
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 185, 183, 183)),
          ),
          SizedBox(
            height: 10,
          ),
          SearchBar()
        ],
      ),
    );
  }
}
