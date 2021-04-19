import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/border_button_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/monthly_erning_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/weekly_erining_screen.dart';

class EarningsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Earnings();
  }
}

class Earnings extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  var weeklySelect = true;
  var monthlySelect = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xFFF3F3F3),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 21,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "€ 260.36",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: Color(0XFF275787),
                              fontSize: 26,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Your Balance",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BorderButtonWidget(
                      text: "Withdraw",
                      myOnTap: () {},
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
                      "Total Trips ",
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
          height: 21,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width, // this will give you fle
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Color(0xffF3AA05),
                )), // xible width not fixed width
            child: new Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          setState(() {
                            weeklySelect = true;
                            monthlySelect = false;
                          });
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(10),
                                bottomLeft: const Radius.circular(10),
                              ),
                              color: weeklySelect
                                  ? Color(0xffF3AA05)
                                  : Colors.white),
                          alignment: Alignment.topCenter,
                          child: Center(
                            child: Text(
                              'Weekly',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: weeklySelect
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w500),
                            ), //varaible above
                          )),
                    )),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        weeklySelect = false;
                        monthlySelect = true;
                      });
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: const Radius.circular(10),
                            bottomRight: const Radius.circular(10),
                          ),
                          color:
                              monthlySelect ? Color(0xffF3AA05) : Colors.white),
                      child: Center(
                        child: Text('Monthly',
                            style: TextStyle(
                                fontSize: 16.0,
                                color:
                                    monthlySelect ? Colors.white : Colors.black,
                                fontWeight: FontWeight.w500)), //varaible above
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        weeklySelect ? WeeklyEriningScreen() : MonthlyErningWidget(),
      ],
    );
  }
}
