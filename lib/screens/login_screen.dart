import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luno_app/screens/having_trouble.dart';
import 'package:luno_app/screens/password_screen.dart';


class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen';
  final String emailImage = 'assets/images/emailImage.png';

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xff13346e),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: _height * 0,
              left: _width * 0.42,
              child: Container(
                height: _height * 0.10,
                width: _width * 0.15,
                child: Image.asset(
                  emailImage,
                  fit: BoxFit.fitHeight,
                ),
                //height: 200.0,
                //width: 200.0,
              ),
            ),
            Positioned(
              top: _height * 0.12,
              left: _width * 0.14,
              child: Text(
                'Sign in with your email',
                style: TextStyle(
                  color: Color(0xff12326b),
                  fontWeight: FontWeight.bold,
                  fontSize: 27.0,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            Positioned(
              top: _height * 0.175,
              left: _width * 0.04,
              child: SizedBox(
                width: _width * 0.92,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff1c8adc),
                        ),
                      ),
                      hintText: 'E-mail address',
                      labelText: 'E-mail',
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: _height * 0.29,
              left: _width* 0.08,
              child: FlatButton(
                padding: EdgeInsets.all(15.0),
                onPressed: () {
                  //Navigator.pushNamed(context, PasswordScreen.id);
                },
                minWidth: _width * 0.85,
                height: _height * 0.04,
                color: Color(0xff0195fa),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  'NEXT',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),

            Positioned(
              top: _height * 0.37,
              left: _width* 0.28,
              child: RichText(
                text: TextSpan(
                  text: 'HAVING TROUBLE?',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0195fa),
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => HavingTrouble((){

                        Navigator.pop(context);
                      }));
                    },
                ),
              ),
            ),
            Positioned(
              top: _height * 0.43,
              left: _width* 0.15,
              child: Text(
                'or sign in with your social account',
                style: TextStyle(
                  color: Color(0xffb1b8cb),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: _height * 0.49,
              left: _width* 0.08,
              child: FlatButton(
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  //Navigator.pushNamed(context, PasswordScreen.id);
                },
                minWidth: _width * 0.85,
                height: _height * 0.04,
                color: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Icon(
                          FontAwesomeIcons.google,
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.07,
                      ),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: _height * 0.59,
              left: _width* 0.08,
              child: FlatButton(
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  //Navigator.pushNamed(context, PasswordScreen.id);
                },
                minWidth: _width * 0.85,
                height: _height * 0.04,
                color: Color(0xff0f71ec),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Icon(
                          FontAwesomeIcons.facebook,
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.007,
                      ),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
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

// Container(
// padding: EdgeInsets.only(left: 10.0, top: 10.0),
// alignment: Alignment.topLeft,
// child: IconButton(
// icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
// onPressed: () {
// // => Navigator.pushNamed(context, WelcomeMenu.id),
// },
// ),
// ),
