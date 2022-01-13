import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch:Colors.grey,
        fontFamily: GoogleFonts.lato().fontFamily,
        
      ),
      darkTheme: ThemeData(
       primarySwatch: Colors.purple,
      ),
      // initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        "/home":(context)=> HomePage(),
        "/login": (context)=> LoginPage(),
      },
    );
  }
}
