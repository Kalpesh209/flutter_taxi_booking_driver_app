import 'package:flutter/material.dart';


class UserProfielWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      color: Color(0xFFF3F3F3),
      padding:
      const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90 / 2),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(
                  'assets/female_avtar.png',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Melissa Brunt",
                style: Theme.of(context).textTheme.caption.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 19),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "+33 0464067013",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black38, fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "melissa.brunt69@gmail.com",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black38, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
