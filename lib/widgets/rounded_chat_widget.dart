import 'package:flutter/material.dart';

class RoundedChatWidget extends StatelessWidget {
  final Color backgroundColor;
  final IconData innerIcon;
  final Color iconColor;

  RoundedChatWidget({
    Key key,
    @required this.backgroundColor,
    @required this.innerIcon,
    @required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(44 / 2),
            color: backgroundColor,
          ),
          child: Center(
              child: Icon(
            innerIcon,
            size: 20,
            color: iconColor,
          )),
        )
      ],
    );
  }
}
