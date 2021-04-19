import 'package:flutter/cupertino.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/notifications_widget.dart';


class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Notificatoin();
  }
}

class Notificatoin extends StatefulWidget {
  @override
  _NotificatoinState createState() => _NotificatoinState();
}

class _NotificatoinState extends State<Notificatoin> {
  var itemLength = 3;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemLength,
        itemBuilder: (BuildContext context, int index) {
          return NotificationWidget(
            headerTxt: "Account and ride updates ",
            descriptionTxt:
                "Includes ride status notifications and updates related to riding on your account.",
            isLastIndex: index == itemLength-1 ? true :false,
          );
        });
  }
}
