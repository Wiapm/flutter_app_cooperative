// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/my_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
static const String screenRoute = 'signin_screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late String email;
  late String password;
  late String name;
  late String num;
  late String coop;
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
                  onChanged: (value) {
                    name = value;
                  },
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_pin_circle),
                      hintText: 'Entrer votre Nom complet',
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
                  onChanged: (value) {
                    email = value;
                  },
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
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
                  onChanged: (value) {
                    password = value;
                  },
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Entrer votre  Mot de passe ',
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
                  onChanged: (value) {
                    num = value;
                  },
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Entrer votre numéro de telephone',
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
                  onChanged: (value) {
                    coop = value;
                  },
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.add_business),
                      hintText: 'Entrer a quelle copérative vous appartient ',
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
                  color: Color.fromARGB(255, 75, 182, 201),
                  title: 'S`inscrire',
                  onPressed: () {
                    print(name);
                    print(email);
                    print(password);
                    print(num);
                    print(coop);
                  },
                ),
              ]),
        ));
  }
}
