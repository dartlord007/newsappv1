import "package:flutter/material.dart";
import "package:newsappv1/screens/HomeScreen.dart";

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'News App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.pink,
            scaffoldBackgroundColor: const Color(0xFFf6f5ee),
          ),
          home: const HomePage(),
    );
  }
}