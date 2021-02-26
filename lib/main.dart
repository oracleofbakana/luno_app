import 'package:flutter/material.dart';
import 'package:luno_app/screens/complain_menu.dart';
import 'package:luno_app/screens/email_recovery.dart';
import 'package:luno_app/screens/welcome_screen.dart';
import 'package:luno_app/screens/signup_screen.dart';
import 'package:luno_app/screens/login_screen.dart';
import 'package:luno_app/screens/welcome_menu.dart';
import 'package:luno_app/screens/password_recovery.dart';
import 'package:luno_app/screens/password_screen.dart';
import 'package:luno_app/screens/authentication_screen.dart';
import 'package:luno_app/screens/create_pin_screen.dart';


void main() {
  runApp(Luno());
}

class Luno extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)=>WelcomeScreen(),
        LoginScreen.id: (context)=>LoginScreen(),
        SignupScreen.id : (context)=>SignupScreen(),
        WelcomeMenu.id: (context)=>WelcomeMenu(),
        EmailRecovery.id: (context)=> EmailRecovery(),
        PasswordRecovery.id: (context)=> PasswordRecovery(),
        ComplainMenu.id: (context)=> ComplainMenu(),
        PasswordScreen.id: (context)=> PasswordScreen(),
        AuthenticationScreen.id: (context)=> AuthenticationScreen(),
        CreatePin.id: (context)=> CreatePin(),
      },
    );
  }
}
