import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home_screen.dart';
import 'package:my_portfolio/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uvais Portfolio',
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
