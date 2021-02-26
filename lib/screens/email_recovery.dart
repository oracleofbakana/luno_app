import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailRecovery extends StatelessWidget {
  static const String id = 'EmailRecovery';
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
                left: 150,
                top: 0,
                child: Container(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    emailImage,
                    fit: BoxFit.fitHeight,
                  ),
                  //height: 200.0,
                  //width: 200.0,
                ),
              ),
              Positioned(
                top: 90.0,
                left: 75.0,
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
                top: 150.0,
                left:10.0,
               // height: MediaQuery.of(context).size.height,
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
                top: 200.0,
                left: 0.0,
                child: SizedBox(
                  width: 400.0,
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
                top: 315.0,
                left:10.0,
                child: FlatButton(
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
