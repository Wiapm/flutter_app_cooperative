// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class RegistrationScreen extends StatefulWidget {
  static const String screenRoute = 'registration_screen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(height: 180, child: Image.asset('images/logo.jpg')),
                SizedBox(height: 50),
                TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      hintText: 'Entrer votre Email',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 243, 33, 142),
                              width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      hintText: 'Entrer votre Mot de passe',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 243, 33, 142),
                              width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                MyButton(
                  color: Color.fromARGB(255, 244, 86, 141),
                  title: 'Se connecter',
                  onPressed: () {},
                ),
              ]),
        ));
  }
}
