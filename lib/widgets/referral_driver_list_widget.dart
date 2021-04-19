import 'package:flutter/material.dart';

class ReferralDriverListWidget extends StatelessWidget {
  final String driverName;
  final String totalRide;

  ReferralDriverListWidget({
    Key key,
    @required this.driverName,
    @required this.totalRide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60 / 2),
            image: DecorationImage(
              image: AssetImage('assets/male_avtar.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          //color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              driverName,
              style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0xff060518),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Completed Rides :",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: Color(0xff8F92A1),
                        fontSize: 14,
                      ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  totalRide,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: Color(0xff275787),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
