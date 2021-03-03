import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordRecovery extends StatelessWidget {
  static const String id = 'PasswordRecovery';
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
         // width: 400.0,
           // height: 800.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: _height * 0,
                left: _width * 0.42,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(FontAwesomeIcons.asterisk, size: 22.0,color: Color(0xff223b73),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(FontAwesomeIcons.asterisk, size: 22.0, color: Color(0xff223b73),),
                      ),
                      Icon(FontAwesomeIcons.lock, size: 22.0, color: Color(0xffe7446e),),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: _height * 0.08,
                left: _width * 0.18,
                child: Text(
                  'Account recovery',
                  style: TextStyle(
                    color: Color(0xff13346e),
                    fontWeight: FontWeight.w800,
                    fontSize: 27.0,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ),


              Positioned(
                top: _height * 0.14,
                left: _width * 0.01,
                child: SizedBox(
                  height: _height * 0.05,
                  width: _width,
                  child: RichText(
                    softWrap: true,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Let's change your ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xffb1b9c8),
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                              text: 'password ',
                              style: TextStyle(
                                color: Color(0xff172d48),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                decorationStyle: TextDecorationStyle.solid,
                              ),
                          ),
                          TextSpan(
                            text: 'by confirming some of your ',
                            style: TextStyle(
                              color: Color(0xffb1b9c8),
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              decorationStyle: TextDecorationStyle.solid,
                            ),
                          ),
                          TextSpan(
                            text: 'personal information ',
                            style: TextStyle(
                              color: Color(0xff172d48),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              decorationStyle: TextDecorationStyle.solid,
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
              ),

              Positioned(
                top: _height * 0.24,
                left: _width * 0.08,
                child: FlatButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {
                    //Navigator.pushNamed(context, PasswordScreen.id);
                  },
                  minWidth: _width * 0.85,
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
