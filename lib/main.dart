import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/theme_provider.dart';
import 'package:my_portfolio/screens/home_screen.dart';
import 'package:my_portfolio/themes/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Uvais Portfolio',
            theme: lightTheme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            themeMode: value.themeType == ThemeType.light
                ? ThemeMode.light
                : ThemeMode.dark,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
