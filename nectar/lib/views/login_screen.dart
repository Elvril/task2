import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final TextEditingController _test = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/main_pic.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Get Your Groceries",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Questrial",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "With nectar",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Questrial",
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 30),
                IntlPhoneField(
                  initialCountryCode: 'DZ',
                  onChanged: (phone) {
                    // print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    // print('Country changed to: ' + country.name);
                  },
                ),
                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    "Or connect with social media",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Questrial",
                      color: Color(0xff828282),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5383EC),
                      fixedSize: const Size(330, 65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/homePage");
                    },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Color(0xffFFF9FF),
                            fontSize: 20,
                            fontFamily: "Questrial",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4A66AC),
                      fixedSize: const Size(330, 65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/homePage");
                    },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            color: Color(0xffFFF9FF),
                            fontSize: 20,
                            fontFamily: "Questrial",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
