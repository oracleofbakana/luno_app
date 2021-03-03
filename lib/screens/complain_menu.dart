import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

class ComplainMenu extends StatelessWidget {
  static const String id = 'ComplainMenu';
  final String emailImage = 'assets/images/emailImage.png';
  //static double contextHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width =  MediaQuery.of(context).size.width;
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
                left: _width * 0.05,
                child: Text(
                  "What's your message about?",
                  style: TextStyle(
                    color: Color(0xff13346e),
                    fontWeight: FontWeight.w800,
                    fontSize: 24.0,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ),


              Positioned(
                top: _height * 0.07,
                left: _width * 0.03,
                child: SizedBox(
                  width: _width * 0.85,
                  child: RichText(
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Provide the best option so we can help you based on your situation",
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
              ),

              Positioned(
                top: _height * 0.17,
                left: _width * 0.04,
                child: RichText(
                  text: TextSpan(
                      text: 'Depositing money',
                      style: TextStyle(
                        color: Color(0xff13346e),
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.pushNamed(context, ComplainMenu.id);
                      }
                  ),
                ),
              ),

              Positioned(
                top: _height * 0.17,
                right: _width * 0.05,
                child: Icon(FontAwesomeIcons.arrowRight,color: Color(0xff2892e2),size: 28.0,
                ),
              ),


              Positioned(
                top: _height * 0.235,
                left: _width * 0.05,
                child: RichText(
                  text: TextSpan(
                      text: 'My Luno account',
                      style: TextStyle(
                        color: Color(0xff13346e),
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        //Navigator.pushNamed(context, ComplainMenu.id);
                      }
                  ),
                ),
              ),

              Positioned(
                top: _height * 0.235,
                right: _width * 0.05,
                child: Icon(FontAwesomeIcons.arrowRight,color: Color(0xff2892e2),size: 28.0,
                ),
              ),


              Positioned(
                top: _height * 0.295,
                left: _width * 0.05,
                child: RichText(
                  text: TextSpan(
                      text: 'Security and authorisations',
                      style: TextStyle(
                        color: Color(0xff13346e),
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        //Navigator.pushNamed(context, ComplainMenu.id);
                      }
                  ),
                ),
              ),

              Positioned(
                top: _height * 0.295,
                right: _width * 0.05,
                child: Icon(FontAwesomeIcons.arrowRight,color: Color(0xff2892e2),size: 28.0,
                ),
              ),


              Positioned(
                top: _height * 0.355,
                left: _width * 0.05,
                child: RichText(
                  text: TextSpan(
                      text: 'I need help with something else',
                      style: TextStyle(
                        color: Color(0xff13346e),
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        //Navigator.pushNamed(context, ComplainMenu.id);
                      }
                  ),
                ),
              ),

              Positioned(
                top: _height * 0.355,
                right: _width * 0.05,
                child: Icon(FontAwesomeIcons.arrowRight,color: Color(0xff2892e2),size: 28.0,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
