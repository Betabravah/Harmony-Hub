import 'package:flutter/material.dart';

import '../widgets/home_greeting.dart';
import '../widgets/home_page_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 25.0, left: 10, right: 10),
      child: Column(children: [HomeNavBar(), Greeting()]),
    );
  }
}
