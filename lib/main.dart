import 'package:flutter/material.dart';
import 'package:wallpaper_app/homepage.dart';
import 'package:fontresoft/fontresoft.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Wallpaper App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme : ThemeData(
        package:FontResoft.package,
        fontFamily: 'Poppins', // Replace Fontresoft.poppins with 'Poppins'
        textTheme: GoogleFonts.poppinsTextTheme(),
        
      ),
      
    );
  }
}

