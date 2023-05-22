import 'package:flutter/material.dart';
import 'package:project_flutter/screens/chat_screen.dart';
import 'package:project_flutter/screens/registration_screen.dart';
import 'package:project_flutter/screens/signin_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';



import 'package:firebase_core/firebase_core.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyBPdCAUTobRNptKKeCXZbCV0YOoMl_9FRA',
          appId: '1:750896141174:android:04ee2570479a83e5baa057',
          messagingSenderId: '750896141174',
          projectId: 'projet-de-cooperative'),
    );
    runApp(MyApp());
    // Your code that may throw an error or exception
  } catch (e) {
    print('Error: $e');
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _auth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: ChatScreen(),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRoute
          : WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
        ChatScreen.screenRoute: (context) => ChatScreen(),
      },
    );
  }
}
