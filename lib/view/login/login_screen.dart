import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/utis/extension.dart';
import 'package:ui/utis/styles.dart';
import 'package:ui/view/widgets/background_layer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              'Sign In',
              style: Styles.title.copyWith(fontSize: 20.sp),
            ),
            SizedBox(
              height: 1.hp,
            ),
            Text(
              'Please Login To Using App',
              style: Styles.content.copyWith(fontSize: 18.sp),
            ),
            SizedBox(
              height: 30.hp,
            ),
            const TextWidget(
              content: 'Email Address',
            ),
            const TextWidget(
              content: 'Password',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {
                        // Handle checkbox state change
                      },
                    ),
                    Text(
                      'Remember me',
                      style: Styles.text,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    // Handle "Forgot Password" action
                  },
                  child: Text('Forgot Password?',
                      style: Styles.text.copyWith(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 8.hp,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle login button press
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r)),
                  padding: EdgeInsets.symmetric(horizontal: 15.wp),
                  backgroundColor: Colors.red, // Change button color to red
                ),
                child: Text(
                  'Sign In',
                  style: Styles.title,
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
                        text: 'Register new account',
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
