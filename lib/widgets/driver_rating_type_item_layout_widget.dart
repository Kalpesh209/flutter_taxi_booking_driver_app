import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/driver_container_widget.dart';



class DriverRatingTypeItemLayoutWidget extends StatelessWidget {
  final String ratingCategoryTxt;
  final String rateMarkingTxt;

  DriverRatingTypeItemLayoutWidget({
    Key key,
    @required this.ratingCategoryTxt,
    @required this.rateMarkingTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                DriverContainerWidget(),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      ratingCategoryTxt,
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 17,
                            color: Color(0xff060518),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Row(
                      children: <Widget>[
                        // RatingBar(
                        //   initialRating: 5,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 5,
                        //   itemSize: 20,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 1),
                        //   itemBuilder: (context, _) => Icon(
                        //     Icons.star,
                        //     color: Colors.amber,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                "${rateMarkingTxt}",
                style: Theme.of(context).textTheme.caption.copyWith(
                      color: Color(0xff275787),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            )
          ],
        )
      ],
    );
  }
}
