import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_conference/screens/home_screen.dart';
import 'package:video_conference/screens/login_screen.dart';
import 'package:video_conference/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bonjour',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
      home:const LoginScreen(),
    );
  }
}
