import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_ui/Screens/hotel_app_UI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hotel Management App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF5FAFE)),
      ),
      home: HotelAppUi(),
    );
  }
}
