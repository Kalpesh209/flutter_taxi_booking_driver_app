import 'package:flutter/material.dart';

class DriverContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xffEDEBEB),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.security,
                size: 41,
                color: Color(0xff060518),
              )
            ],
          ),
        ),
      ],
    );
  }
}
