import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/my_vehicle_item_layout_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';

 class MyVehiclesScreen extends StatelessWidget {
   static const String routeName = "myvehiclesscreen";

   @override
  Widget build(BuildContext context) {
    return MyVehicles();
  }
}

class MyVehicles extends StatefulWidget {
  @override
  _MyVehiclesState createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  var selectedIndex;
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
            titleWidget: ViitTitleWidget("My Vehicles"),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      MyVehicleItemLayout(
                        radiovalue: index,
                        myOnTap: (val) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        isSelected: selectedIndex,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      index == 2
                          ? SizedBox()
                          : Divider(
                        height: 4,
                        color: Color(0XFFE8E4E4),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );

  }
}

