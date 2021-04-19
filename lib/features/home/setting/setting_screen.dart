import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/app_setting/app_setting_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/emergency_contacts/emergency_contact_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/my_docunment/my_docunment_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/my_vehicles/my_vehicles_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/navigaion_setting/navigation_setting_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/privacy_setting/privacy_setting_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/loginsignup/login/login_screen.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/flat_button_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/help_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/user_profile_widget.dart';


class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Setting();
  }
}

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserProfielWidget(),
        SizedBox(
          height: 30,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  MyVehiclesScreen.routeName,
                );
              },
              child: HelpWidget(
                title: "My Vehicles",
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 4,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFEAEAEB),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  MyDocunmentScreen.routeName,
                );
              },
              child: HelpWidget(
                title: "My Documents",
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 4,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFEAEAEB),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  NavigationSettingScreen.routeName,
                );
              },
              child: HelpWidget(
                title: "Navigation Settings",
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 4,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFEAEAEB),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  PrivacySettingScreen.routeName,
                );
              },
              child: HelpWidget(
                title: "Privacy Settings",
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 4,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFEAEAEB),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppSettingScreen.routeName,
                );
              },
              child: HelpWidget(
                title: "App Settings",
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 4,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFEAEAEB),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(
                  EmergencyContactScreen.routeName,
                );
              },
              child: HelpWidget(
                title: "Emergency Contacts",
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 4,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFEAEAEB),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "Delet account",
            style: Theme.of(context).textTheme.caption.copyWith(
                fontWeight: FontWeight.w500,
                color: Color(0XFFDF2E21),
                fontSize: 18),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: FlatButtonWidget(
            btnColor: Color(0XFFFFAA00),
            btnTxt: "Signout",
            btnOnTap: () {
              Navigator.of(context).pushReplacementNamed(
                LoginScreen.routeName,
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
