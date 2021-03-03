import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luno_app/screens/signup_screen.dart';
import 'package:luno_app/screens/login_screen.dart';
import 'package:luno_app/screens/welcome_menu.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen';
  final String welcomeScreenAsset = 'assets/images/rocket_img.svg';

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, WelcomeMenu.id);
          },
        ),
        elevation: null,
        backgroundColor: Color(0xff12326b),
      ),
      backgroundColor: Color(0xff12326b),
      body: SafeArea(
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Positioned(
              top: _screenSize.height * 0,
              left: _screenSize.width * 0,
              child: Container(
                width: _screenSize.width,
                height: _screenSize.height * 0.55,
                child: SvgPicture.asset(welcomeScreenAsset),
              ),
            ),

              Positioned(
                left: _screenSize.width * 0.06,
                top: _screenSize.height * 0.48,
                child: Text(
                  'Lift off to the new crypto world',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: _screenSize.height*0.54,
                left: _screenSize.width* 0.15,
                child: FlatButton(

                  padding: EdgeInsets.all(20.0),
                  onPressed: () {
                   Navigator.pushNamed(context, SignupScreen.id);
                  },
                  minWidth: _screenSize.width * 0.7,
                  height: _screenSize.height * 0.04,
                  color: Color(0xfff04772),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: _screenSize.height*0.64,
                left: _screenSize.width* 0.14,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  splashColor: Colors.lightBlueAccent,
                  padding: EdgeInsets.all(20.0),
                  minWidth: _screenSize.width * 0.7,
                  height: _screenSize.height * 0.04,
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
