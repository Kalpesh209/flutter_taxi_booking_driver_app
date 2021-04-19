import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/help_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/select_app_mode_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';

class AppSettingScreen extends StatelessWidget {
  static const String routeName = "appsettingscreen";

  @override
  Widget build(BuildContext context) {
    return AppSettinng();
  }
}

class AppSettinng extends StatefulWidget {
  @override
  _AppSettinngState createState() => _AppSettinngState();
}

class _AppSettinngState extends State<AppSettinng> {
  var selectIndex;
  var automatiocSwitch =false;
  var selectCurrency;
  var selectLanguage;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child:
        Scaffold(
          appBar: ViitAppBar(
            onLeadingPressed: () {
              Navigator.of(context).pop();
            },
            leadingWidget: ViitAppBarIconWidget(
              viitAppBarIconType: ViitAppBarIconTypes.BACK,
            ),
            titleWidget: ViitTitleWidget("App Settings"),
          ),
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SelectAppModeWidget(
                    backgroundColor: Colors.white,
                    modeIndex: 1,
                    myOnTap: (val){
                      setState(() {
                        selectIndex = val;
                      });

                    },
                    selectedMode: selectIndex,
                    modeName: "Light",
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  SelectAppModeWidget(
                    backgroundColor: Color(0XFF275787),
                    modeIndex: 2,
                    myOnTap: (val){
                      setState(() {
                        selectIndex = val;
                      });
                    },
                    selectedMode: selectIndex,
                    modeName: "Dark",
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 4,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Color(0xFFEAEAEB),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child:     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Automatic ",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF060518),
                          fontSize: 16),
                    ),
                    Transform.scale(scale: 1,
                        child: 
                        CupertinoSwitch(
                          activeColor: Color(0XFF275687),
                          value: automatiocSwitch,
                          onChanged: (val){
                            setState(() {
                              automatiocSwitch=val;
                            });
                          },
                        )
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 18,
              ),
              Container(
                height: 4,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Color(0xFFEAEAEB),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Currency",
                  style: Theme.of(context).textTheme.caption.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: <Widget>[
                    Radio(
                      value: 1,
                      activeColor: Color(0XFF275687),
                      groupValue: selectCurrency,
                      onChanged: (val) {
                        setState(() {
                          selectCurrency = val;
                        });
                      },
                    ),
                    Text(
                      "Euro",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF275687),
                          fontSize: 16),
                    ),
                    Radio(
                      value: 2,
                      activeColor: Color(0XFF275687),
                      groupValue: selectCurrency,
                      onChanged: (val) {
                        setState(() {
                          selectCurrency = val;
                        });
                      },
                    ),
                    Text(
                      "Doller",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF275687),
                          fontSize: 16),
                    ),
                    Radio(
                      value: 3,
                      activeColor: Color(0XFF275687),
                      groupValue: selectCurrency,
                      onChanged: (val) {
                        setState(() {
                          selectCurrency = val;
                        });
                      },
                    ),
                    Text(
                      "GBP",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF275687),
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFEAEAEB),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Language",
                  style: Theme.of(context).textTheme.caption.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: <Widget>[
                    Radio(
                      value: 1,
                      activeColor: Color(0XFF275687),
                      groupValue: selectLanguage,
                      onChanged: (val) {
                        setState(() {
                          selectLanguage = val;
                        });
                      },
                    ),
                    Text(
                      "French",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF275687),
                          fontSize: 16),
                    ),
                    Radio(
                      value: 2,
                      activeColor: Color(0XFF275687),
                      groupValue: selectLanguage,
                      onChanged: (val) {
                        setState(() {
                          selectLanguage = val;
                        });
                      },
                    ),
                    Text(
                      "English",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF275687),
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFEAEAEB),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: HelpWidget(
                  title: "Ride Alert Volume",
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

