import 'package:flutter/material.dart';

class ErningAmountWidget extends StatelessWidget {
  final String titletxt;
  final String amounttxt;
  ErningAmountWidget(
      {Key key, @required this.titletxt, @required this.amounttxt})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "${titletxt}",
          style: Theme.of(context).textTheme.caption.copyWith(
              color: Color(0XFF060518),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        Row(
          children: <Widget>[
            Image.asset(
              "assets/euro.png",
              height: 12,
              width: 12,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "${amounttxt}",
              style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0XFF060518),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}
