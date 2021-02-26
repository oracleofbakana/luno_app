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
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              child: Image.asset(
                emailImage,
                fit: BoxFit.fitHeight,
              ),
              //height: 200.0,
              //width: 200.0,
            ),
            Text(
              'Sign in with your email',
              style: TextStyle(
                color: Color(0xff12326b),
                fontWeight: FontWeight.bold,
                fontSize: 27.0,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(
                    color: Color(0xff1c8adc),
                  )),
                  hintText: 'E-mail',
                  labelText: 'E-mail',
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(12.0),
              onPressed: () {
                Navigator.pushNamed(context, PasswordScreen.id);
              },
              minWidth: 370.0,
              height: 30.0,
              color: Color(0xff0195fa),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                'NEXT',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            RichText(
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
            Text(
              'or sign in with your social account',
              style: TextStyle(
                color: Color(0xffb1b8cb),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(12.0),
              onPressed: () {
                //Navigator.pushNamed(context, PasswordScreen.id);
              },
              //minWidth: 370.0,
              //height: 30.0,
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
                      width: 40.0,
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
            FlatButton(
              padding: EdgeInsets.all(12.0),
              onPressed: () {
                //Navigator.pushNamed(context, PasswordScreen.id);
              },
              //minWidth: 370.0,
              // height: 35.0,
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
                      width: 40.0,
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
