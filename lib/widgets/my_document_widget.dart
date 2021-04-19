import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/square_outline_button_widget.dart';



class MyDocumentWidget extends StatelessWidget {
    final String docunmentTyperTxt;
    final String docunmentImage;

  MyDocumentWidget({
    Key key,
     @required this.docunmentTyperTxt,
    @required this.docunmentImage,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         Row(
           children: <Widget>[
             Image.asset(
               docunmentImage,
               height: 52,
               width: 82,
             ),
             SizedBox(
               width: 15,
             ),
             Text(
               docunmentTyperTxt,
               style: Theme.of(context).textTheme.caption.copyWith(
                   color: Color(0xff060518),
                   fontSize: 17,
                   fontWeight: FontWeight.w500),
             ),
           ],
         ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SqaureOutlineButtonWidget(
              borderColor: Color(0xff979797),
              btnTxt: "Upload",
              iconShow: true,
              textColor: Color(0xff979797),
              btnOnTap: () {},
              btnIcon: Icons.file_upload,
            ),
            SizedBox(
              width: 10,
            ),
            SqaureOutlineButtonWidget(
              borderColor: Color(0xff979797),
              btnTxt: "Edit",
              iconShow: true,

              textColor: Color(0xff979797),
              btnOnTap: () {},
              btnIcon: Icons.edit,
            ),
            SizedBox(
              width: 10,
            ),
            SqaureOutlineButtonWidget(
              borderColor: Color(0xff979797),
              btnTxt: "Delete",
              iconShow: true,

              textColor: Color(0xff979797),
              btnOnTap: () {},
              btnIcon: Icons.delete,
            ),
          ],
        )
      ],
    );
  }
}
