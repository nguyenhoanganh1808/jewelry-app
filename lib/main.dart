import 'package:flutter/material.dart';
import 'package:jewelry_app/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.light),
        primaryColor: Colors.white,
        useMaterial3: true,
        textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
            bodyMedium: TextStyle(fontSize: 14)),
      ),
      home: const HomeScreen(),
    );
  }
}
