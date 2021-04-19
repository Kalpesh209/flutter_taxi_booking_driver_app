import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelpWidget extends StatelessWidget {
  final String title;
  HelpWidget({
    Key key,
    @required this.title
  })  : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "$title",
            style: Theme.of(context).textTheme.caption.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 18),
          ),
          Icon(
            Icons.chevron_right,
            size: 30,
            color: Colors.grey,
          )
        ],
      ),

    );
  }
}
