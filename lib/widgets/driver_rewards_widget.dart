import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DriverProfileRewardsWidget extends StatelessWidget {
  final String driverName;
  final double driverRating;

  DriverProfileRewardsWidget({
    Key key,
    @required this.driverName,
    @required this.driverRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 125,
          decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
          ),
          child: Row(
            children: <Widget>[
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(88 / 2),
                  image: DecorationImage(
                    image: AssetImage('assets/male_avtar.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      // RatingBar(
                      //   initialRating: driverRating,
                      //   direction: Axis.horizontal,
                      //   allowHalfRating: true,
                      //   itemCount: 5,
                      //   itemSize: 20,
                      //   itemPadding: EdgeInsets.symmetric(horizontal: 1),
                      //   itemBuilder: (context, _) => Icon(
                      //     Icons.star,
                      //     color: Colors.amber,
                      //   ),
                      // ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${driverRating}",
                        style: Theme.of(context).textTheme.caption.copyWith(
                            color: Color(0xff060518),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
