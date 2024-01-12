import 'package:flutter/material.dart';
import 'package:shamo/pages/splash_page.dart';
import 'package:shamo/pages/sign_in_page.dart';
// import 'theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in':(context) => const SignInPage(),
      },
    );
  }
}
