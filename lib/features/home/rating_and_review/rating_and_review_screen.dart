import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/average_rating_card_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/driver_rating_message_itemlayout_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/driver_rating_type_item_layout_widget.dart';



class RattingAndReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RattingAndReview();
  }
}

class RattingAndReview extends StatefulWidget {
  @override
  _RattingAndReviewState createState() => _RattingAndReviewState();
}

class _RattingAndReviewState extends State<RattingAndReview> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xFFF3F3F3),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "2056",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF275787),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Total Trips",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Container(
                  height: 90,
                  width: 1,
                  color: Color(0XFFD3D0D0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "65",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF275787),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Years/Months",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF8F92A1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "4.8",
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: Color(0XFF060518),
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0XFFFFAA00),
                    size: 35,
                  ),
                ],
              ),
              AverageRatingCardWidget(),
              SizedBox(
                height: 30,
              ),
              DriverRatingTypeItemLayoutWidget(
                ratingCategoryTxt: "Driving Skills",
                rateMarkingTxt: "89",
              ),
              SizedBox(
                height: 10,
              ),
              DriverRatingTypeItemLayoutWidget(
                ratingCategoryTxt: "Service",
                rateMarkingTxt: "99",
              ),
              SizedBox(
                height: 10,
              ),
              DriverRatingTypeItemLayoutWidget(
                ratingCategoryTxt: "Car Cleanliness",
                rateMarkingTxt: "56",
              ),
              SizedBox(
                height: 10,
              ),
              DriverRatingTypeItemLayoutWidget(
                ratingCategoryTxt: "Pickup On-time",
                rateMarkingTxt: "75",
              ),
              SizedBox(
                height: 10,
              ),
              DriverRatingTypeItemLayoutWidget(
                ratingCategoryTxt: "Drop-off Time ",
                rateMarkingTxt: "19",
              ),
              SizedBox(
                height: 10,
              ),
              DriverRatingTypeItemLayoutWidget(
                ratingCategoryTxt: "Behaviour ",
                rateMarkingTxt: "35",
              ),
              SizedBox(
                height: 10,
              ),
              DriverRatingTypeItemLayoutWidget(
                ratingCategoryTxt: "Comfortable Ride ",
                rateMarkingTxt: "56",
              ),
              SizedBox(
                height: 25,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        DriverRatingMessageItemLayoutWidget(
                          riderNoteTxt: "Rider note",
                          feedbackTxt: "Awesome guy Great trip.",
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    );
                  }),
            ],
          ),
        ),
      ],
    );
  }
}

