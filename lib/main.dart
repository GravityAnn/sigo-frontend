import 'package:flutter/material.dart';
import 'package:projects/screen/Homescreen.dart'; // 분리한 홈 화면 import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  // 다른 화면에서도 호출할 수 있도록 static method로 예시
  static void addSomething() {
    print('Adding!!!');
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF4F5F7),
        fontFamily: 'Inter',
      ),
      home: const HomeScreen(), // 홈 화면을 따로 분리
    );
  }
}
