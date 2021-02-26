import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luno_app/models/welcome_menu_tiles.dart';
import 'package:luno_app/models/bottom_nav_bar.dart';

class WelcomeMenu extends StatefulWidget {
  static const String id = 'WelcomeMenu';

  @override
  _WelcomeMenuState createState() => _WelcomeMenuState();
}

class _WelcomeMenuState extends State<WelcomeMenu> {
  final List<String> entries = <String>[
    'Sign In',
    'Security',
    'Settings',
    'Help',
    'PriceAlerts'
  ];

  final List<Icon> iconsImage = [
    Icon(Icons.verified_user, size: 20),
    Icon(Icons.shield),
    Icon(Icons.settings),
    Icon(Icons.help),
    Icon(Icons.alarm_on)
  ];

  final List<Icon> faIcons = [
    Icon(FontAwesomeIcons.user),
    Icon(FontAwesomeIcons.shieldAlt),
    Icon(FontAwesomeIcons.cog),
    Icon(FontAwesomeIcons.questionCircle),
    Icon(FontAwesomeIcons.bell)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff12326b),
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xff13346e),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: null,
        backgroundColor: Color(0xff12326b),
      ),
      bottomNavigationBar: BottomNavBar(),

      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            // left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.5,
              //color: Color(0xff12326b),
              //alignment: Alignment.lerp(
              //Alignment.topCenter, Alignment.bottomCenter, 0.2),
              child: CustomPaint(
                painter: CurvePainter(),
                child: Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // child: Container(
          //     decoration: BoxDecoration(
          //       // boxShadow: [
          //       //   BoxShadow(
          //       //     color: Colors.grey.withOpacity(0.5),
          //       //     spreadRadius: 5,
          //       //     blurRadius: 7,
          //       //     offset: Offset(0, 3), // changes position of shadow
          //       //   ),
          //       // ],

          //       //color: Color(0xff12326b),
          //       // borderRadius: BorderRadius.only(
          //       //   bottomLeft: Radius.circular(35.0),
          //       //   bottomRight: Radius.circular(35.0),
          //       // ),
          //     ),
          //

          // ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.26,
            // left: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.70,
                decoration: BoxDecoration(
                  color: Color(0xfff2f2f2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      //  spreadRadius: 5,
                      //blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                alignment: Alignment.lerp(
                    Alignment.topCenter, Alignment.bottomCenter, 0.7),
                child: Text('Luno',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffa2a2a2),
                    ))),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.11,
            // child: Container(),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.52,
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 20, right: 20.0),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return WelcomeMenuContainers(
                    iconImage: faIcons[index],
                    containerTitle: entries[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xff12326b);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
