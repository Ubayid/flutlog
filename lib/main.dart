import 'package:flutter/material.dart';
import 'package:log_page/screens/welcom.dart';
import 'package:log_page/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightMode,
      home: const WelcomeScreen(),
    );
  }
}
