import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/myrides/bloc/myrides_bloc.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/myrides/canceled_ride_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/myrides/complet_ride_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/myrides/upcoming_ride_screen.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/droop_down_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/my_ride_tab_widget.dart';


class MyRidesScreen extends StatelessWidget {
  static const String routeName = "myride";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MyRides(),
      create: (context) => MyridesBloc(),
    );
  }
}

class MyRides extends StatefulWidget {
  @override
  _MyRidesState createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
  var upcomingRideSelect = true;
  var completRideSelect = false;
  var canceledRideSelect = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          DatePickerWidget(),
          SizedBox(
            height: 21,
          ),
          MyRideTabWidget(
            onTapUpcoming: () {
              setState(() {
                upcomingRideSelect = true;
                completRideSelect = false;
                canceledRideSelect = false;
              });
            },
            onTapComplet: () {
              setState(() {
                upcomingRideSelect = false;
                completRideSelect = true;
                canceledRideSelect = false;
              });
            },
            onTapCancele: () {
              setState(() {
                upcomingRideSelect = false;
                completRideSelect = false;
                canceledRideSelect = true;
              });
            },
            upcomingRideSelect: upcomingRideSelect,
            completRideSelect: completRideSelect,
            canceledRideSelect: canceledRideSelect,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SingleChildScrollView(
              child: upcomingRideSelect
                  ? UpComingRideScreen()
                  : completRideSelect
                      ? CompletedRideScreen()
                      : CanceledRideScreen(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  var selectDateIndex = 0;

  @override
  Widget build(BuildContext context) {
    final weekDay = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'San',
    ];
    List date = new List();
    List datNameArry = new List();
    var lastday = DateTime(2020, 1 + 1, 0);
    for (int i = 0; i < lastday.day; i++) {
      DateTime currentDate = DateTime(2020, 1, i + 1);
      date.add("${i + 1}");
      datNameArry.add("${weekDay[currentDate.weekday - 1]}");
    }
    print(lastday);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
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
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 70,
          //width: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: date.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectDateIndex = index;
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 50,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1,
                          color: selectDateIndex == index
                              ? Color(0XFF275687)
                              : Color(0XFFF5F5F5)),
                      color: Color(0XFFF5F5F5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "${datNameArry[index]}",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: selectDateIndex == index
                                  ? Color(0XFF275687)
                                  : Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "${date[index]}",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: selectDateIndex == index
                                  ? Color(0XFF275687)
                                  : Colors.black26,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
