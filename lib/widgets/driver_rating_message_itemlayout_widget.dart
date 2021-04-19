import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/rounded_chat_widget.dart';


class DriverRatingMessageItemLayoutWidget extends StatelessWidget {
  final String riderNoteTxt;
  final String feedbackTxt;

  DriverRatingMessageItemLayoutWidget({
    Key key,
    @required this.riderNoteTxt,
    @required this.feedbackTxt,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            RoundedChatWidget(
              backgroundColor: Color(0xffF3F3F3),
              innerIcon: Icons.chat,
              iconColor: Color(0xff265687),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              riderNoteTxt,
              style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0xff060518),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              feedbackTxt,
              style: Theme.of(context).textTheme.caption.copyWith(
                  color: Color(0xff8F92A1),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffF3AA05),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffF3AA05),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffF3AA05),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffF3AA05),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffF3AA05),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
