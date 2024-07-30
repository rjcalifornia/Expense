import 'package:expense/global.dart';
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 22,
            ),
            Center(
              child: SizedBox(
                width: 360,
                child: Image.asset("images/mobile-app-development.png"),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            const Text("The easiest approach to",
                style: TextStyle(
                    color: Color(0xff26272A),
                    fontSize: 24,
                    fontWeight: FontWeight.normal)),
            const Text("handle your finances",
                style: TextStyle(
                    color: Color(0xff26272A),
                    fontSize: 24,
                    fontWeight: FontWeight.normal)),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Your money. Your goals. Your way.",
              style: TextStyle(
                  color: ExpenseColors.infoSmall,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              width: 386,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ExpenseColors.brand,
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            SizedBox(
              width: 380,
              child: Text(
                license_1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: ExpenseColors.infoSmall, fontSize: 10),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 380,
              child: Text(
                license_2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: ExpenseColors.infoSmall, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
