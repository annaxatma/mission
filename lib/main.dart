import 'package:tests/views/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mission Widget',
        theme: ThemeData(
        primarySwatch: Colors.blue,
        ),

        initialRoute: '/',
        routes: {
        '/': (context) => Mission1Page(),
        Mission2Page.routeName: (context) => Mission2Page(),
        },
    );
  }
}