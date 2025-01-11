import 'package:flutter/material.dart';
import 'package:real_state_app/screens/Catalog01Screen.dart';
import 'package:real_state_app/screens/Catalog03Screen.dart';
import 'package:real_state_app/screens/CreateAccountScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Catalog01screen(),
    );
  }
}
