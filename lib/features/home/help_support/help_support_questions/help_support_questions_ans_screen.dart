import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/common/my_colors.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';


class HelpSupportQuestionAnswerScreen extends StatelessWidget {
  static const String routeName = "helpsupportquestionanswer";

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
            titleWidget: ViitTitleWidget("Help & Support"),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 18,
              bottom: 18,
              left: 32,
              right: 21,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  "Can drivers choose another route from the one suggested by the system? ",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: kLoginBlack,
                        fontSize: 18,
                      ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "$kLoremText $kLoremText $kLoremText $kLoremText $kLoremText",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: kTextLoginfaceid,
                        fontSize: 16,
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
