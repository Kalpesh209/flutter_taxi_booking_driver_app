import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/rating_line_widget.dart';


class AverageRatingCardWidget extends StatefulWidget {
  @override
  _AverageRatingCardWidgetState createState() =>
      _AverageRatingCardWidgetState();
}

class _AverageRatingCardWidgetState extends State<AverageRatingCardWidget> {
  getWidth(ratingCount) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.width);
    var percentagerate = (ratingCount / 500);
    var width = MediaQuery.of(context).size.width * percentagerate;
    return width - 40;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
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
                        Text("5")
                      ],
                    ),
                    Text(
                      "455",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RartingLineWidget(
                  myWidth: getWidth(455),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        // RatingBar(
                        //   initialRating: 4,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 4,
                        //   itemSize: 20,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 1),
                        //   itemBuilder: (context, _) => Icon(
                        //     Icons.star,
                        //     color: Colors.amber,
                        //   ),
                        // ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("4")
                      ],
                    ),
                    Text(
                      "200",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RartingLineWidget(
                  myWidth: getWidth(200),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        // RatingBar(
                        //   initialRating: 3,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 3,
                        //   itemSize: 20,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 1),
                        //   itemBuilder: (context, _) => Icon(
                        //     Icons.star,
                        //     color: Colors.amber,
                        //   ),
                        // ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("3")
                      ],
                    ),
                    Text(
                      "300",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RartingLineWidget(
                  myWidth: getWidth(300),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        // RatingBar(
                        //   initialRating: 2,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 2,
                        //   itemSize: 20,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 1),
                        //   itemBuilder: (context, _) => Icon(
                        //     Icons.star,
                        //     color: Colors.amber,
                        //   ),
                        // ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("2")
                      ],
                    ),
                    Text(
                      "150",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RartingLineWidget(
                  myWidth: getWidth(150),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        // RatingBar(
                        //   initialRating: 1,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 1,
                        //   itemSize: 20,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 1),
                        //   itemBuilder: (context, _) => Icon(
                        //     Icons.star,
                        //     color: Colors.amber,
                        //   ),
                        // ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("1")
                      ],
                    ),
                    Text(
                      "100",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RartingLineWidget(
                  myWidth: getWidth(150),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
