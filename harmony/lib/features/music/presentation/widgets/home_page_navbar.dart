import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture(
          SvgAssetLoader('assets/svg/menu.svg'),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/profile.png'),
        )
      ],
    );
  }
}
