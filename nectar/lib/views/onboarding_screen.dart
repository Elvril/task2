import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/onboarding.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 48,
              height: 56,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo_carrot.png"),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 48.0,
                color: Colors.white,
                fontFamily: "Questrial",
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "to our store",
              style: TextStyle(
                fontSize: 48.0,
                color: Colors.white,
                fontFamily: "Questrial",
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Ger your groceries in as fast as one hour",
              style: TextStyle(
                fontSize: 16.0,
                color: const Color(0xffFCFCFC).withOpacity(0.7),
                fontFamily: "Questrial",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff53B175),
                fixedSize: const Size(330, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/login");
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                  color: Color(0xffFFF9FF),
                  fontSize: 20,
                  fontFamily: "Questrial",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
