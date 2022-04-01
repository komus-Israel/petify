import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(PetifyApp());
}

class PetifyApp extends StatefulWidget {
  @override
  _PetifyAppState createState() => _PetifyAppState();
}

class _PetifyAppState extends State<PetifyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(),
        theme: ThemeData(
            primaryColorLight: Colors.deepOrange[200],
            primaryColorDark: Colors.deepOrange[900],
            primaryColor: Colors.deepOrangeAccent,
            accentColor: Colors.deepOrange,
            dividerColor: Colors.grey,
            textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
            visualDensity: VisualDensity.adaptivePlatformDensity
        )

    );
  }
}


