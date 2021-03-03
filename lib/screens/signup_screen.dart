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
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

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
        child: Stack(
          children: <Widget>[
            Positioned(
              top: _height * 0.00,
              left: _width * 0.38,
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Color(0xff13346e),
                  fontWeight: FontWeight.bold,
                  fontSize: 27.0,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            Positioned(
              top: _height * 0.06,
              left: _width * 0.17,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Already have an account?  ',
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
            ),
            Positioned(
              top: _height * 0.11,
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
              top: _height * 0.21,
              left: _width * 0.04,
              child: SizedBox(
                width: _width * 0.92,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(_isHidden
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      helperText:
                          'Use at least 8 characters, 1 number & 1 uppercase letter',
                      helperStyle: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff878ca1),
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff1c8adc),
                        ),
                      ),
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
              Positioned(
                top:   _height * 0.355,
                left:  _width * 0.05,
                child: SizedBox(
                  height: _height * 0.10,
                  width: _width * 0.9,
                  child: RichText(
                    softWrap: true,
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
                ),
              ),
              Positioned(
                top: _height * 0.44,
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
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: _height * 0.54,
                left: _width* 0.055,
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal:10.0),
                  child:Container(
                    height: _height * 0.001,
                    width: MediaQuery.of(context).size.width*0.85,
                    color:Colors.black,
                  ),
                ),
              ),

              Positioned(
                top: _height * 0.57,
                left: _width* 0.14,
                child: Text(
                  'or sign up with your social account',
                  style: TextStyle(
                    color: Color(0xff12326b),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Positioned(
                top: _height * 0.64,
                left: _width* 0.08,
                child: FlatButton(
                  minWidth: _width * 0.85,
                  height: _height * 0.04,
                  padding: EdgeInsets.all(12.0),
                  onPressed: () {
                    //Navigator.pushNamed(context, PasswordScreen.id);
                  },
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
                          width: _width * 0.10,
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
              ),
              Positioned(
                top: _height * 0.76,
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
                          width: _width * 0.10,
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
              ),
          ],
        ),
      ),
    );
  }
}
