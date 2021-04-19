import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/common/my_colors.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/my_document_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';


class MyDocunmentScreen extends StatelessWidget {
  static const String routeName = "mydocunmentscreen";

  @override
  Widget build(BuildContext context) {
    return MyDocunment();
  }
}

class MyDocunment extends StatefulWidget {
  @override
  _MyDocunmentState createState() => _MyDocunmentState();
}

class _MyDocunmentState extends State<MyDocunment> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            titleWidget: ViitTitleWidget("My Docunment"),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                color: Color(0xFFF3F3F3),
                padding: const EdgeInsets.only(
                    top: 20, right: 20, left: 20, bottom: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "ID Number : ",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kLoginBlack, fontSize: 17),
                        ),
                        Text(
                          "DRI77336",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kPrimaryColor, fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Driving Licence Expiry Date : ",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kLoginBlack, fontSize: 17),
                        ),
                        Text(
                          "2022-12-02",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kPrimaryColor, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: <Widget>[
                    MyDocumentWidget(
                      docunmentTyperTxt:"Driving license (Front)",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"Driving license (Back)",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"RC Professionnelle (Front)",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"RC Professionnelle (Back)",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"Carte Professionnelle VTC\n(Front)",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"Carte Professionnelle VTC\n(Back)",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"Extrait KBIS",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"Attestation d’assurance\nd’exploitation",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyDocumentWidget(
                      docunmentTyperTxt:"Inscription au registre VTC",
                      docunmentImage: "assets/female_avtar.png",
                    ),
                    Divider(
                      color: kGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                )

              ),


            ],
          ),
        ),
      ),
    );
  }
}
