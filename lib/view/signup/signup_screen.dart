import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/utis/extension.dart';
import 'package:ui/utis/styles.dart';
import 'package:ui/view/login/login_screen.dart';
import 'package:ui/view/widgets/background_layer.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundLayer(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.hp,
            ),
            Text(
              'Register',
              style: Styles.title.copyWith(fontSize: 20.sp),
            ),
            SizedBox(
              height: 1.hp,
            ),
            Text(
              'New Account',
              style: Styles.title.copyWith(fontSize: 20.sp),
            ),
            SizedBox(
              height: 27.hp,
            ),
            const TextWidget(
              content: 'Full Name',
            ),
            const TextWidget(
              content: 'Email Address',
            ),
            const TextWidget(
              content: 'Phone Number',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.wp),
              child: InkWell(
                onTap: () {
                  // Handle "Forgot Password" action
                },
                child: Text('Have a referal code ?',
                    style: Styles.text.copyWith(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 8.hp,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 08.wp),
                  backgroundColor: Colors.red, // Change button color to red
                ),
                child: Text(
                  'Register Account',
                  style: Styles.title.copyWith(fontSize: 15.sp),
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'or  ',
                  style: Styles.text,
                  children: [
                    TextSpan(
                        text: 'Sign In with your account',
                        style: Styles.text.copyWith(
                            color: Colors.grey, fontWeight: FontWeight.bold)
                        // Add any navigation or tap handling for registration here
                        ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3.hp,
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.5.hp, horizontal: 2.wp),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelStyle: Styles.text,
          hintStyle: Styles.text,
          labelText: content,
          hintText: content,
        ),
      ),
    );
  }
}
