import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luno_app/screens/authentication_screen.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';


class CreatePin extends StatelessWidget {
  static const String id = 'CreatePin';



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
                    FontAwesomeIcons.lock,
                    size: 58.0,
                    color: Color(0xffe7446e),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.11,
              left: screenWidth * 0.25,
              child: Text(
                "Create A new PIN",
                style: TextStyle(
                  color: Color(0xff12326b),
                  fontWeight: FontWeight.w900,
                  fontSize: 22.0,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.17,
              left: screenWidth * 0.085,
              child: Text(
                "You will use this pin to perform secure actions",
                style: TextStyle(
                  color: Color(0xff12326b),
                  fontWeight: FontWeight.w900,
                  fontSize: 14.0,
                  decorationStyle: TextDecorationStyle.solid,
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
                    showFieldAsBox: true,
                    isTextObscure: true,
                    fieldWidth: 60.0,
                    onSubmit: (String pin){
                      Navigator.pushNamed(context, AuthenticationScreen.id);
                      //end showDialog()
                    }, // end onSubmit
                  ),
                ), // end PinEn
              ),
            ),


          ],
        ),
      ),
    );
  }
}
