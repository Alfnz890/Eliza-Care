import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 3)).then(
    //   (value) {
    //     Navigator.pushAndRemoveUntil(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => OnBoardingScreen(),
    //       ),
    //       (route) => false,
    //     );
    //   },
    // );

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Image.asset('lib/assets/logo.png', width: 150,),
        )
      )
    );
  }
}
