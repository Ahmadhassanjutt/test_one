import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vvvvvvv/home_screen.dart';
import 'package:vvvvvvv/language.dart';




void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale("ur", "PK"),
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen()

    );
  }
}

