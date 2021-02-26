import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luno_app/screens/signup_screen.dart';
import 'package:luno_app/screens/login_screen.dart';
import 'package:luno_app/screens/welcome_menu.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen';
  final String welcomeScreenAsset = 'assets/images/rocket_img.svg';


  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff12326b),
       // appBar: AppBar(
       //   leading: IconButton(
       //     icon: Icon(Icons.arrow_back, color: Colors.black),
       //     onPressed: () => Navigator.pushNamed(context, WelcomeMenu.id),
       //   ),
       //     //backgroundColor: Colors.blue[700],
       //     //title: Text('Luno - Trade Bitcoin and Ethereum'),
       // ),
      body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 12.0),
            alignment: Alignment.topLeft,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                 onPressed: (){
                   Navigator.pushNamed(context, WelcomeMenu.id);
                 }
            ),
          ),

              Container(
            height: _screenSize.height * 0.55,
                child: SvgPicture.asset(welcomeScreenAsset),
              ),

              Text(
                'Lift off to the new crypto world',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FlatButton(

                padding: EdgeInsets.all(20.0),
                onPressed: () {
                 Navigator.pushNamed(context, SignupScreen.id);
                },
                minWidth: 300.0,
                height: 50.0,
                color: Color(0xfff04772),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                splashColor: Colors.lightBlueAccent,
                padding: EdgeInsets.all(20.0),
                minWidth: 300.0,
                height: 50.0,
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

// GestureDetector(
//   onTap: () {},
//   child: Container(
//     width: 100,
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.blue),
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text("Click",textAlign: TextAlign.center,),
//     ),
//   ),
// )
