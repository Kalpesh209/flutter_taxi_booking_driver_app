import 'package:flutter/material.dart';

class NumberOfRideWidget extends StatelessWidget {
  final String lblnumber;
  final String lblnumberTxt;

  NumberOfRideWidget({
    Key key,
    @required this.lblnumber,
    @required this.lblnumberTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141,
      width: 141,
      decoration: BoxDecoration(
        color: Color(0xffF1F2F6),
        borderRadius: BorderRadius.circular(141 / 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            lblnumber,
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0xff275787),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            lblnumberTxt,
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0xff060518),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
