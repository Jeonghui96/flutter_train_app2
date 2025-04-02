import 'package:flutter/material.dart';
import 'package:flutter_train_app/home_page.dart';
import 'package:flutter_train_app/seat_page/seat_page.dart';
import 'package:flutter_train_app/station_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.purple),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            textStyle: WidgetStatePropertyAll(
              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
