import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/square_outline_button_widget.dart';


class MyVehicleItemLayout extends StatelessWidget {
  final   radiovalue;
  final   isSelected;
  final Function myOnTap;
  MyVehicleItemLayout({
    Key key,
    @required this.radiovalue,
    @required this.isSelected,
    @required this.myOnTap,
})  : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/car.png",
                  height: 65,
                  width: 65,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Vitt Van",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Color(0XFF060518),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "AB - 1234",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: Color(0XFF8F92A1),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mercedes Cargo",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: Color(0XFF275787),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Transform.scale(scale: 1.4,
              child:Radio(
                activeColor: Color(0XFF275787),
                value: radiovalue,
                groupValue: isSelected,
                onChanged: myOnTap,
              ),
             )
          ],
        ),
        Row(
          children: <Widget>[
            SqaureOutlineButtonWidget(
              iconShow: true,
              btnTxt: "Upload",
              btnIcon: Icons.file_upload,
              borderColor: Color(0XFF275787),
              btnOnTap: () {},
            ),
            SizedBox(
              width: 10,
            ),
            SqaureOutlineButtonWidget(
              iconShow: true,
              btnTxt: "Edit",
              btnIcon: Icons.edit,
              borderColor: Color(0XFF275787),

              btnOnTap: () {},
            ),
            SizedBox(
              width: 10,
            ),
            SqaureOutlineButtonWidget(
              iconShow: true,
              btnTxt: "Delete",
              btnIcon: Icons.delete,
               borderColor: Color(0XFF275787),
               btnOnTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
