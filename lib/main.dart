
import 'package:flutter/material.dart';
import 'package:sih/form_screen.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'image_screen.dart';


void main() => runApp(SIH());

class SIH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black38),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        FormScreen.id : (context) => FormScreen(),
        ImageScreen.id : (context) => ImageScreen(),
        },
    );
  }
}