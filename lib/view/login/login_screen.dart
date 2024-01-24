import 'package:flutter/material.dart';
import 'package:ui/view/widgets/background_layer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundLayer(
        child: Column(
          children: [Text('')],
        ),
      ),
    );
  }
}
