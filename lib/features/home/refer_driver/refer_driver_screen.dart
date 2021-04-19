import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/common/my_colors.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/refer_driver/how_work_details_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/refer_driver/your_referral_driver_screen.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/border_button_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/flat_button_widget.dart';
import 'package:share/share.dart';


 class ReferDriverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ReferDriver();
  }
}

class ReferDriver extends StatefulWidget {
  @override
  _FreeRidesState createState() => _FreeRidesState();
}

class _FreeRidesState extends State<ReferDriver> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/free_rides.png"),
          SizedBox(
            height: 6,
          ),
          Center(
            child: Text(
              "Earn More ",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: kLoginBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Share the Vitt love with other great drivers like you by sharing your personal referral code. Track the progress of your invitees and know when you will get your Vitt Referral Bonus!",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: kTextLoginfaceid,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: BorderButtonWidget(
                text: "How Invites Work",
                myOnTap: () {
                  Navigator.of(context)
                      .pushNamed(HowWorkDetailsScreen.routeName);
                }),
          ),
          SizedBox(
            height: 15,
          ),

          Center(
            child: Container(
              height:35,
              width: 177,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35/2),
                color: kPrimaryColor,
              ),

              child: GestureDetector(
                onTap: (){
                  Navigator.of(context)
                      .pushNamed(YourReferralDriverScreen.routeName);
                },
                child: Center(
                  child:  Text(
                    "Your Referrals",
                    style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              )

            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Text(
              "Share your invite code",
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: kLoginBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                color: kShareCodeBg,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Share.share('melissa9913ue');
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Opacity(
                        opacity: 0.64,
                        child: Text(
                          "melissa9913ue",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLoginBlack,
                                fontSize: 15,
                              ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Icon(
                          Icons.share,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButtonWidget(
                    btnTxt: "Whatsapp",
                    btnColor: kAccentColor,
                    btnOnTap: () {},
                    height: 52,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
        ],
      ),
    );
  }
}
