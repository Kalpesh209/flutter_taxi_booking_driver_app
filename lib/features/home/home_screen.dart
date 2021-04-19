import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/earnings/earnings_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/help_support/help_support_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/home_nav_drawer.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/myrides/my_rides_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/notification/notification_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/profile/profile_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/rating_and_review/rating_and_review_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/refer_driver/refer_driver_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/setting_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/viit_rewards/viit_rewards_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/prefill_home/prefill_home_screen.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';


import 'bloc/bloc.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: Home(),
      create: (context) => HomeBloc(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myCurrentNavIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeBloc homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = BlocProvider.of<HomeBloc>(context);
    homeBloc.add(
      CheckLocPer(),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    homeBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          drawer: MyNavDrawer(
            context: context,
            myListItems: _buildItems(),
            currentSelectedNavItem: myCurrentNavIndex,
            onProfileTap: () {
              print("Clicked on profile...");
              setState(
                () {
                  myCurrentNavIndex = 9; //Profile index onTap
                },
              );

              Navigator.of(context).pop();
            },
            onNavItemChange: (int tapedIndex) {
              print("I am tapped with $tapedIndex");
              setState(() {
                // if (tapedIndex == 6) {
                //   //Goto Login screen
                //   print("Goto Login screen");
                // } else {
                myCurrentNavIndex = tapedIndex;
                Navigator.of(context).pop();
                // }
              });
            },
          ),
          appBar: ViitAppBar(
            leadingWidget: ViitAppBarIconWidget(
              viitAppBarIconType: ViitAppBarIconTypes.MENU,
            ),
            titleWidget: ViitTitleWidget(
              _getAppBarTitleByIndex(myCurrentNavIndex),
            ),
            onLeadingPressed: () {
              print("Leading click");
              _scaffoldKey.currentState.openDrawer();
            },
            isActionWidget: myCurrentNavIndex == 6,
            onActionPressed: () {},
            actionWidget: Padding(
              padding: const EdgeInsets.only(
                right: 6,
              ),
              child: Icon(
                CupertinoIcons.delete,
                size: 31,
                color: Colors.white,
              ),
            ),
          ),
          body: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state is AskLocationDialog) {
                print("Ask location dialog");
                // showDialog(
                //   context: context,
                //   child: DialogBoxWidget(
                //     titleText:
                //         "Allow “Vitt” to access your location while you are using the app?",
                //     descriptionText:
                //         "Allow Vitt experiences to use your location",
                //     primaryBtnTxt: "Allow",
                //     secondaryBtnTxt: "Don’t Allow",
                //     onPrimaryTap: () {
                //       Navigator.of(context).pop();
                //       homeBloc.add(
                //         AskLocationDialogEvent(),
                //       );
                //     },
                //     onSecondaryTap: () {
                //       Navigator.of(context).pop();
                //       /*homeBloc.add(
                //         // CheckLocPer(),
                //       );*/
                //     },
                //   ),
                // );
              }
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return _buildNavBodyByIndex(
                  myCurrentNavIndex,
                  context,
                );
              },
            ),
          ),

          /*_buildNavBodyByIndex(
              myCurrentNavIndex,
              context,
            )*/
        ),
      ),
    );
  }

  _getAppBarTitleByIndex(paramTapedIndex) {
    switch (paramTapedIndex) {
      case 1: // MyRides
        return "My Rides";
        break;
      case 2: // Earnings
        return "Earnings";
        break;
      case 3: // Viit Rewards
        return "Viit Rewards";
        break;
      case 4: // Help & Support
        return "Help & Support";
        break;
      case 5: // Refer a Driver
        return "Refer a Driver";
        break;
      case 6: // Notifications
        return "Notifications";
        break;
      case 7: // Settings
        return "Settings";
        break;
      case 8: // Rate & Reviews
        return "Rate & Reviews";
        break;
      case 9: // Edit profile
        return "Edit Profile";
        break;
      default: // default home
        return "Home";
        break;
    }
  }

  _buildNavBodyByIndex(paramTapedIndex, buildContext) {
    switch (paramTapedIndex) {
      case 1: // MyRides
        return MyRidesScreen();
        break;
      case 2: // Earnings
        return EarningsScreen();
        break;
      case 3: // Viit Rewards
        return ViitRewardsScreen();
        break;
      case 4: // Help & Support
        return HelpSupportScreen();
        break;
      case 5: // Refer a Driver
        return ReferDriverScreen();
        break;
      case 6: // Notifications
        return NotificationScreen();
        break;
      case 7: // Settings
        return SettingScreen();
        break;
      case 8: // Rates & Reviews
        return RattingAndReviewScreen();
        break;
      case 9: // Profile
        return ProfileScreen();
        break;
      default: // default home
        return PrefillHomeScreen();
        break;
    }
  }

  _buildLoadingState() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  _buildErrorState(errorMsg) {
    return Center(
      child: Container(
        child: Text("$errorMsg"),
      ),
    );
  }

  _buildItems() {}
}
