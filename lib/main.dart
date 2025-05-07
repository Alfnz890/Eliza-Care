import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/pages/doctor_detail/doctor_detail.dart';
import 'package:flutter_application_2v1/pages/intro/on_boarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      routes: {
        '/doctorDetails': (context) => const DoctorDetail(),
      },
    );
  }
}
