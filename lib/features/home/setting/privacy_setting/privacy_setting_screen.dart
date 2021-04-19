import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/privacy_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';

class PrivacySettingScreen extends StatelessWidget {
  static const String routeName = "privacysettingscreen";

  @override
  Widget build(BuildContext context) {
    return PrivacyStting();
  }
}

class PrivacyStting extends StatefulWidget {
  @override
  _PrivacySttingState createState() => _PrivacySttingState();
}

class _PrivacySttingState extends State<PrivacyStting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: ViitAppBar(
            onLeadingPressed: () {
              Navigator.of(context).pop();
            },
            leadingWidget: ViitAppBarIconWidget(
              viitAppBarIconType: ViitAppBarIconTypes.BACK,
            ),
            titleWidget: ViitTitleWidget("Privacy Settings"),
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    PrivacyWidget(
                      myTitle: "Location",
                      mydeisc:
                      "Vitt uses your device’s location services for more reliable rides.",
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
                    PrivacyWidget(
                      myTitle: "Notifications ",
                      mydeisc:
                      "Control what messages you receive from Vitt.",
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
                    PrivacyWidget(
                      myTitle: "Vitt Teen ",
                      mydeisc:
                      "",
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
                    PrivacyWidget(
                      myTitle: "Vitt Access ",
                      mydeisc:
                      "",
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

