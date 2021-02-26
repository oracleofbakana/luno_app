import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthenticationScreen extends StatelessWidget {
  static const String id = 'AuthenticationScreen';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
              left: screenWidth * 0.44,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Icon(
                    FontAwesomeIcons.key,
                    size: 58.0,
                    color: Color(0xffe7446e),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.11,
              left: screenWidth * 0.18,
              child: Text(
                "Enter your 2FA code",
                style: TextStyle(
                  color: Color(0xff12326b),
                  fontWeight: FontWeight.w900,
                  fontSize: 26.0,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.17,
              left: screenWidth * 0.16,
              child: RichText(
                softWrap: true,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Please enter the 6-digit code from your ',
                      style: TextStyle(
                        color: Color(0xff12326b),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.19,
              left: screenWidth * 0.35,
              child: RichText(
               textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'authentication app',
                      style: TextStyle(
                        color: Color(0xff12326b),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.24,
              left: screenWidth * 0.04,
              child: SizedBox(
                width: screenWidth * 0.92,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PinEntryTextField(
                    fields: 6,
                    showFieldAsBox: true,
                    isTextObscure: true,
                    fieldWidth: 40.0,
                    onSubmit: (String pin) {
                      //end showDialog()
                    }, // end onSubmit
                  ),
                ), // end PinEn
              ),
            ),
            Positioned(
              top: screenHeight * 0.35,
              left: screenWidth * 0.22,
              child: Text(
                "OPEN AUTHENTICATOR APP",
                style: TextStyle(
                  color: Color(0xff12326b),
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.40,
              left: screenWidth * 0.30,
              child: Text(
                "HAVING TROUBLE?",
                style: TextStyle(
                  color: Color(0xff12326b),
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
