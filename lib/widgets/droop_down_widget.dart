import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  final String title;

  DropDownWidget({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0XFFF5F5F5),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "${title}",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.black26, fontSize: 14),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 20,
              color: Colors.black26,
            ),
          ],
        ),
      )),
    );
  }
}
