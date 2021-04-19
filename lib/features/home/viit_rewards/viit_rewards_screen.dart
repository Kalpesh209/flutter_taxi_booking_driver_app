import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/border_button_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/driver_rewards_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/droop_down_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/number_of_ride_widget.dart';

class ViitRewardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViitRewards();
  }
}

class ViitRewards extends StatefulWidget {
  @override
  _ViitRewardsState createState() => _ViitRewardsState();
}

class _ViitRewardsState extends State<ViitRewards> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DriverProfileRewardsWidget(
            driverName: "Gary Phelps", driverRating: 4.5),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DropDownWidget(
                    title: "Select Month",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  DropDownWidget(
                    title: "Select Year",
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NumberOfRideWidget(
                    lblnumber: "N  of rides",
                    lblnumberTxt: "42",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  NumberOfRideWidget(
                    lblnumber: "Money\nearned",
                    lblnumberTxt: "€ 3,20",
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Current Level Fresher",
                style: Theme.of(context).textTheme.caption.copyWith(
                      color: Color(0xff060518),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.thumb_up,
                    size: 22,
                    color: Color(0XFFFFAA00),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "96%",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0xff275787),
                          fontSize: 17,
                        ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.thumb_down,
                    size: 22,
                    color: Color(0XFFFFAA00),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "3%",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0xff275787),
                          fontSize: 17,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BorderButtonWidget(
                    text: " Claim Reward! ",
                    myOnTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(
                  text: 'Next level : ',
                  style: Theme.of(context).textTheme.caption.copyWith(
                      color: Color(0xff060518),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'PRO!',
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0xff275787),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/smile.png",
                    height: 32,
                    width: 32,
                    color: Color(0XFF275787),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.info,
                    size: 25,
                    color: Color(0XFFFFAA00),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
