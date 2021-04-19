import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/referral_driver_list_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';


class YourReferralDriverScreen extends StatelessWidget {
  static const String routeName = "yourreferraldriver";


@override
  Widget build(BuildContext context) {
    return YourReferDriver();
  }
}

class YourReferDriver extends StatefulWidget {
  @override
  _ReferDriverState createState() => _ReferDriverState();
}

class _ReferDriverState extends State<YourReferDriver> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: ViitAppBar(
            onLeadingPressed: () {
              Navigator.of(context).pop();
            },
            leadingWidget: ViitAppBarIconWidget(
              viitAppBarIconType: ViitAppBarIconTypes.BACK,
            ),
            titleWidget: ViitTitleWidget("Refer a Driver"),
          ),
          body:ListView(
            children: <Widget>[
              SizedBox(
                height: 4,
              ),
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF3F3F3),
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "€ 25.36",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: Color(0XFF275787),
                              fontSize: 26,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "You Earned",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: Color(0XFF060518),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          ReferralDriverListWidget(
                            driverName: "Heidi Wilson",
                            totalRide: "12/17",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 4,
                            color: Color(0XFFE8E4E4),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    }),
              )
            ],
          ) ,
        ),
      ),
    );

  }
}
