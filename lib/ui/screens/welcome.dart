import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfffafafa),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 350,
                child: Image.asset("images/mobile-app-development.png"),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            const Text("The easiest approach to",
                style: TextStyle(
                    color: Color(0xff26272A),
                    fontSize: 24,
                    fontWeight: FontWeight.w500)),
            const Text("handle your finances",
                style: TextStyle(
                    color: Color(0xff26272A),
                    fontSize: 24,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Your money. Your goals. Your way.",
              style: TextStyle(
                  color: Color(0xff8D9096), fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ));
  }
}
