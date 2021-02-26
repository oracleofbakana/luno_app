import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:luno_app/screens/complain_menu.dart';
import 'package:luno_app/screens/email_recovery.dart';
import 'package:luno_app/screens/password_recovery.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HavingTrouble extends StatelessWidget {
  static const String id = 'HavingTrouble';

  final Function addTaskCallback;

  HavingTrouble(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height* 0.2,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Row(
             children: <Widget>[
               Icon(Icons.email, color: Color(0xff2892e2),size: 28.0,
               ),
               SizedBox(
                 width: 20.0,
               ),
               RichText(
                 text: TextSpan(
                     text: 'Forgot my e-mail address',
                     style: TextStyle(
                       color: Color(0xff13346e),
                       fontWeight: FontWeight.bold,
                       fontSize: 15.0,
                       decorationStyle: TextDecorationStyle.solid,
                     ),
                   recognizer: TapGestureRecognizer()..onTap = (){
                       Navigator.pushNamed(context, EmailRecovery.id);
                   }
                 ),
               ),
             ],
           ),

            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.asterisk, color: Color(0xff2892e2),size: 28.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Forgot my password',
                    style: TextStyle(
                      color: Color(0xff13346e),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.pushNamed(context, PasswordRecovery.id);
                      }
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.file,color: Color(0xff2892e2),size: 28.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Having 2FA trouble',
                    style: TextStyle(
                      color: Color(0xff13346e),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.pushNamed(context, ComplainMenu.id);
                      }
                  ),
                ),
              ],
            ),

          ],
        ),

    ),
    );
  }
}
