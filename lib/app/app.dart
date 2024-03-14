import 'package:flutter/material.dart';
import '../route/menu/menu_route.dart';

class ImcApp extends StatelessWidget {
  const ImcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "APP METEO",
      home: const MenuRoute(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.orangeAccent
        ),
      ),
    );
  }
}