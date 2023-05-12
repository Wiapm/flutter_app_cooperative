import 'package:flutter/material.dart';
import 'package:project_flutter/screens/registration_screen.dart';
import 'package:project_flutter/screens/signin_screen.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Container(
                        height: 180, child: Image.asset('images/logo.jpg')),
                    const Text(
                      "Coopérative en Ligne",
                      style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 49, 57, 120)),
                    )
                  ],
                ),
                SizedBox(height: 30),
                MyButton(
                  color: Color.fromARGB(255, 244, 86, 141),
                  title: 'Se connecter',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RegistrationScreen.screenRoute);
                  },
                ),
                MyButton(
                  color: Color.fromARGB(255, 52, 114, 237),
                  title: 'S`inscrire',
                  onPressed: () {
                    Navigator.pushNamed(context, SignInScreen.screenRoute);
                  },
                )
              ]),
        ));
  }
}
