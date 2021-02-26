import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luno_app/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'SignupScreen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isHidden = true;


  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xff13346e),
          onPressed: () {
            Navigator.of(context).pop();
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
            Text(
              'Sign up',
              style: TextStyle(
                color: Color(0xff13346e),
                fontWeight: FontWeight.bold,
                fontSize: 27.0,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      color: Color(0xff12326b),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        color: Color(0xff2892e2),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        }),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1c8adc),
                    ),
                  ),
                  hintText: 'E-mail',
                  labelText: 'E-mail',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                obscureText: _isHidden,
                decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: _togglePasswordView,
                      child: Icon(_isHidden? Icons.visibility: Icons.visibility_off),
                  ),
                  helperText: 'Use at least 8 characters, 1 number & 1 uppercase letter',
                  helperStyle: TextStyle(fontSize: 13.0, color: Color(0xff878ca1),fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1c8adc),
                    ),
                  ),
                  hintText: 'Password',
                  labelText: 'Password',
                ),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'By signing up, I agree to the ',
                    style: TextStyle(
                      color: Color(0xff515868),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  TextSpan(
                      text: 'terms of use ',
                      style: TextStyle(
                        color: Color(0xff2892e2),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          //Navigator.pushNamed(context, LoginScreen.id);
                        }),
                  TextSpan(
                    text: 'and processing of my personal data as stated in the ',
                    style: TextStyle(
                      color: Color(0xff515868),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
              TextSpan(
                  text: ' privacy policy',
                  style: TextStyle(
                    color: Color(0xff2892e2),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      //Navigator.pushNamed(context, LoginScreen.id);
                    }),
          ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(15.0),
              onPressed: () {
                //Navigator.pushNamed(context, PasswordScreen.id);
              },
              minWidth: 370.0,
              height: 30.0,
              color: Color(0xff0195fa),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:10.0),
              child:Container(
                height:1.0,
                width: MediaQuery.of(context).size.width*0.85,
                color:Colors.black,
              ),
            ),

            Text(
              'or sign up with your social account',
              style: TextStyle(
                color: Color(0xff12326b),
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
                          fontSize: 18.0,
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
                          fontSize: 18.0,
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
