import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_interface/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter LoginPage',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(
          Theme.of(context).textTheme
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
    );
  }
}