import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectAppModeWidget extends StatelessWidget {
  final Color backgroundColor;
  final int selectedMode;
  final Function myOnTap;
  final int modeIndex;
  final String modeName;

  SelectAppModeWidget({
    Key key,
    @required this.backgroundColor,
    @required this.selectedMode,
    @required this.myOnTap,
    @required this.modeIndex,
    @required this.modeName,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 134,
          width: 92,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Color(0XFFF1F1F1)),
              color: backgroundColor),
          child: Center(
            child: Image.asset(
              "assets/logo_small.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Radio(
                value: modeIndex,
                activeColor: Color(0XFF275687),
                groupValue: selectedMode,
                onChanged: myOnTap),
            Text(
              "${modeName}",
              style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF275787),
                  fontSize: 17),
            ),
          ],
        ),
      ],
    );
  }
}
