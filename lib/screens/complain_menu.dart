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
          width: 400.0,
          height: 900.0,
          child: Stack(
            //verticalDirection: VerticalDirection.down,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Positioned(
                top: 30.0,
                left: 10.0,
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
                top: 90.0,
                left:10.0,
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.85,
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

              Positioned(
                top: 180.0,
                left: 10.0,
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
                top: 180.0,
                right: 10.0,
                child: Icon(FontAwesomeIcons.arrowRight,color: Color(0xff2892e2),size: 28.0,
                ),
              ),


              Positioned(
                top: 250.0,
                left: 10.0,
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
                top: 250.0,
                right: 10.0,
                child: Icon(FontAwesomeIcons.arrowRight,color: Color(0xff2892e2),size: 28.0,
                ),
              ),


              Positioned(
                top: 320.0,
                left: 10.0,
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
                top: 320.0,
                right: 10.0,
                child: Icon(FontAwesomeIcons.arrowRight,color: Color(0xff2892e2),size: 28.0,
                ),
              ),


              Positioned(
                top: 390.0,
                left: 10.0,
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
                top: 390.0,
                right: 10.0,
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
