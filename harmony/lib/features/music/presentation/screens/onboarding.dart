import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.black],
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 430,
            child: Image(
              image: AssetImage('assets/images/splash_screen.png'),
              fit: BoxFit.cover,
            ),
          ),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyLarge,
              children: const <TextSpan>[
                TextSpan(
                  text: 'MUSIC',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' CAN\nCHANGE THE WORLD',
                ),
              ],
            ),
          ),
          Text(
            'We\'re the second most popular place to listen to podcasts in the world-and growing fast.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          ClipOval(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 237, 147, 245),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                    offset: Offset(1, 0), // adjust the offset if needed
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: CircleBorder(),
                  primary: Colors.black,
                  elevation:
                      0.0, // set elevation to 0 to prevent overlapping shadows
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    'START',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
