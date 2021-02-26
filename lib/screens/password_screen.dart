import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:luno_app/screens/create_pin_screen.dart';
import 'package:luno_app/screens/password_recovery.dart';

class PasswordScreen extends StatefulWidget {
  static const String id = 'PasswordScreen';

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool _isHidden = true;

    void _togglePasswordView() {
      setState(() {
        _isHidden = !_isHidden;
      });
    }

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
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Positioned(
              top: screenHeight * 0,
              left: screenWidth * 0.36,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          FontAwesomeIcons.asterisk,
                          size: 30.0,
                          color: Color(0xff223b73),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          FontAwesomeIcons.asterisk,
                          size: 30.0,
                          color: Color(0xff223b73),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.lock,
                        size: 30.0,
                        color: Color(0xffe7446e),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.08,
              left: screenWidth * 0.17,
              child: Text(
                "What's your password?",
                style: TextStyle(
                  color: Color(0xff12326b),
                  fontWeight: FontWeight.w900,
                  fontSize: 22.0,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.15,
              left: screenWidth * 0.04,
              child: SizedBox(
                width: screenWidth * 0.92,
                child: TextField(
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                    suffix: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off),
                    ),
                    //helperText: 'Use at least 8 characters, 1 number & 1 uppercase letter',
                    helperStyle: TextStyle(
                        fontSize: 13.0,
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
            Positioned(
              top: screenHeight * 0.25,
              left: screenWidth * 0.04,
              child: FlatButton(
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  Navigator.pushNamed(context, CreatePin.id);
                },
                minWidth: screenWidth * 0.9,
                height: screenHeight * 0.07,
                color: Color(0xff0195fa),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  'NEXT',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.35,
              left: screenWidth * 0.25,
              child: SizedBox(
                width: screenWidth * 0.50,
                child: RichText(
                  text: TextSpan(
                    text: 'FORGOT PASSWORD',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0195fa),
                    ),
                    recognizer: TapGestureRecognizer()..onTap = (){
                      Navigator.pushNamed(context, PasswordRecovery.id);
                    },
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
