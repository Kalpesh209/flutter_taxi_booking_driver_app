import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/help_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';

class NavigationSettingScreen extends StatelessWidget {
  static const String routeName = "navigationsettingscreen";

  @override
  Widget build(BuildContext context) {
    return NavigationSctting();
  }
}

class NavigationSctting extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<NavigationSctting> {
  var voiceNavigation=false;
  var selectPreferance;
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
            titleWidget: ViitTitleWidget("Navigation Settings"),
          ),
          body:  ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: HelpWidget(
                  title: "Emergency Contacts",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 4,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Color(0xFFF1F1F1),
              ),
              SizedBox(
                height:15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child:    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Voice Navigation ",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF060518),
                          fontSize: 18),
                    ),
                    Transform.scale(scale: 1,
                        child: CupertinoSwitch(
                          activeColor: Color(0XFF275687),
                          value: voiceNavigation,
                          onChanged: (val){
                            setState(() {
                              voiceNavigation=val;
                            });
                          },
                        )
                    ),
                  ],
                ),

              ),
              SizedBox(
                height:15,
              ),
              Container(
                height: 4,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Color(0xFFF1F1F1),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Voice Navigation ",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF060518),
                          fontSize: 18),
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 1,
                              activeColor: Color(0XFF275687),
                              groupValue: selectPreferance,
                              onChanged: (val) {
                                setState(() {
                                  selectPreferance = val;
                                });
                              },
                            ),
                            Text(
                              "Google Map",
                              style: Theme.of(context).textTheme.caption.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF275787),
                                  fontSize: 17),
                            ),

                          ],
                        ), SizedBox(
                          width: 20,
                        ) ,
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 2,
                              activeColor: Color(0XFF275687),
                              groupValue: selectPreferance,
                              onChanged: (val) {
                                setState(() {
                                  selectPreferance = val;
                                });
                              },
                            ),
                            Text(
                              "Waze",
                              style: Theme.of(context).textTheme.caption.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF275787),
                                  fontSize: 17),
                            ),

                          ],
                        )

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 3,
                              activeColor: Color(0XFF275687),
                              groupValue: selectPreferance,
                              onChanged: (val) {
                                setState(() {
                                  selectPreferance = val;
                                });
                              },
                            ),
                            Text(
                              "Bing Maps",
                              style: Theme.of(context).textTheme.caption.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF275787),
                                  fontSize: 17),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 4,
                              activeColor: Color(0XFF275687),
                              groupValue: selectPreferance,
                              onChanged: (val) {
                                setState(() {
                                  selectPreferance = val;
                                });
                              },
                            ),
                            Text(
                              "Apple Map",
                              style: Theme.of(context).textTheme.caption.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF275787),
                                  fontSize: 17),
                            ),

                          ],
                        )

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
