import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/common/my_colors.dart';


class PrivacyWidget extends StatelessWidget {
  final String myTitle;
  final String mydeisc;
    PrivacyWidget({
      Key key,
    this.myTitle,
    this.mydeisc,
    })  : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "$myTitle",
                style: Theme.of(context).textTheme.caption.copyWith(
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                    fontSize: 16),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.8,
                child:Text(
                  "$mydeisc",
                  style: Theme.of(context).textTheme.caption.copyWith(
                      color: kTextLoginfaceid,
                      fontSize: 15),
                ),
              )

            ],
          ),
          Transform.scale(scale: 1,
              child: CupertinoSwitch(
                activeColor: Color(0XFF275687),
                value: false,
               ),
          ),
         ],
      ),
    );
  }
}
