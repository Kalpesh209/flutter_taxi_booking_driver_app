import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/animation_rating_widget.dart';


class RartingLineWidget extends StatefulWidget {
  var  myWidth;
  RartingLineWidget({
    Key key,
     this.myWidth
})  : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<RartingLineWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         Stack(
            children: <Widget>[
             Container(
               width: MediaQuery.of(context).size.width,
               height: 10,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Color(0XFFEEEBEB),

               ),
             ),
            Container(
              padding: const EdgeInsets.only(top: 5),
                 width:widget.myWidth - 40 <=0 ?  0 : widget.myWidth-40,
                 child: Cross(),
               ),
             ],
         )
        ],
     );
  }
}
