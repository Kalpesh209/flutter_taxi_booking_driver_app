import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/earning_bar_chart_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/erning_amount_widget.dart';


class WeeklyEriningScreen extends StatefulWidget {
  @override
  _WeeklyEriningScreenState createState() => _WeeklyEriningScreenState();
}

class _WeeklyEriningScreenState extends State<WeeklyEriningScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFF5F5F5),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Dec 15-21",
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: Colors.black26, fontSize: 14),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              ErningBarChartWidget(),
            ],
          ),
        ),
        SizedBox(
          height: 10,
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
                    "2555.36",
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: Color(0XFF275787),
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Weekly Earnings",
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: Color(0XFF060518),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Earnings",
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: Color(0XFF275787),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/euro.png",
                        height: 15,
                        width: 15,
                        color: Color(0XFF275787),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "260.00",
                        style: Theme.of(context).textTheme.caption.copyWith(
                            color: Color(0XFF275787),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ErningAmountWidget(
                titletxt: "Trip Earnings",
                amounttxt: "230.00",
              ),
              SizedBox(
                height: 15,
              ),
              ErningAmountWidget(
                titletxt: "Toll Charges",
                amounttxt: "40.50",
              ),
              SizedBox(
                height: 15,
              ),
              ErningAmountWidget(
                titletxt: "Tips",
                amounttxt: "76.35",
              ),
              SizedBox(
                height: 15,
              ),
              ErningAmountWidget(
                titletxt: "Rewards",
                amounttxt: "88.75",
              ),
              SizedBox(
                height: 15,
              ),
              ErningAmountWidget(
                titletxt: "Other Adjustments",
                amounttxt: "6.00",
              ),
              SizedBox(
                height: 21,
              )
            ],
          ),
        ),
      ],
    );
  }
}
