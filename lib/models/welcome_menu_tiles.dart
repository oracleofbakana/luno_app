import 'package:flutter/material.dart';

class WelcomeMenuContainers extends StatelessWidget {
final String containerTitle;
final Widget iconImage;

WelcomeMenuContainers({this.iconImage, this.containerTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.14,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: iconImage,
          ),
          SizedBox(width: 20.0),
          Text(
            containerTitle,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
              color: Color(0xff12326b),
            ),
          ),
        ],
      ),
    );
  }
}
