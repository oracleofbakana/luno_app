import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailRecovery extends StatelessWidget {
  static const String id = 'EmailRecovery';
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
            Navigator.of(context).pop();
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
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
                ),
              ),
              Positioned(
                top: _height * 0.12,
                left: _width * 0.185,
                child: Text(
                  'Confirm your email',
                  style: TextStyle(
                    color: Color(0xff13346e),
                    fontWeight: FontWeight.w800,
                    fontSize: 27.0,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ),


              Positioned(
                top: _height * 0.17,
                left: _width * 0.07,
                width: MediaQuery.of(context).size.width * 0.85,
                child: RichText(
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Enter the email you use to sign into Luno or receive notifications",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff172d48),
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: _height * 0.23,
                left: _width * 0.05,
                child: SizedBox(
                  width: _width * 0.9,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1c8adc),
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
                top: _height * 0.35,
                left: _width * 0.09,
                child: FlatButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {
                    //Navigator.pushNamed(context, PasswordScreen.id);
                  },
                  minWidth: _width * 0.8,
                  height: _height * 0.05,
                  color: Color(0xff0195fa),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    ' NEXT',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
