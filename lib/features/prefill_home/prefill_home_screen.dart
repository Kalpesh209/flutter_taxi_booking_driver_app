import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/common/my_colors.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/my_listtile_widget.dart';


class PrefillHomeScreen extends StatelessWidget {
  static const String routeName = "prefillhome";

  @override
  Widget build(BuildContext context) {
    return PrefillHome();
  }
}

class PrefillHome extends StatefulWidget {
  @override
  _PrefillHomeState createState() => _PrefillHomeState();
}

class _PrefillHomeState extends State<PrefillHome> {
  @override
  void initState() {
    super.initState();
    print("PrefillHome init");
  }

  @override
  Widget build(BuildContext context) {
    print("PrefillHome build");
    return Column(
      children: <Widget>[
        Container(
          height: 145,
          color: kSettingTopBg,
          padding: const EdgeInsets.all(21),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello Gary Phelps",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: kLoginBlack,
                        fontSize: 18,
                        letterSpacing: 0.43,
                      ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Thank you for signup with Vitt , In order to receive trip requests You needs to complete following steps which is part of our process.",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: kTextLoginfaceid,
                        fontSize: 16,
                        letterSpacing: 0.18,
                      ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 8,
            left: 6,
            right: 20,
          ),
          child: MyListTitle(
            title: "Complete Your Profile",
            myOnTap: () {},
            isLastIndex: false,
          ),
        ),
        /*Container(
          height: 1,
          color: kDottedBorder,
        ),*/
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 8,
            left: 6,
            right: 20,
          ),
          child: MyListTitle(
            title: "Add Your Documents",
            isLastIndex: false,
            myOnTap: () {},
          ),
        ),
        /*Container(
          height: 1,
          color: kDottedBorder,
        ),*/
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 8,
            left: 6,
            right: 20,
          ),
          child: MyListTitle(
            title: "Add Your Vehicle Document",
            myOnTap: () {},
            isLastIndex: true,
          ),
        ),
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("PrefillHome didChangeDependencies");
  }

  @override
  void dispose() {
    super.dispose();
    print("PrefillHome dispose");
  }
}
