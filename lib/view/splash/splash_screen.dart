import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/utis/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primary,
      body: Center(
          child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 60.r,
        child: Image.asset(
          'assets/eayezy.png',
        ),
      )),
    );
  }
}
