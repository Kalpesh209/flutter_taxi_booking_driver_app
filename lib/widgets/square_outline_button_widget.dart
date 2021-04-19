import 'package:flutter/material.dart';

class SqaureOutlineButtonWidget extends StatelessWidget {
  final String btnTxt;
  final VoidCallback btnOnTap;
  final Color borderColor;
  final Color textColor;
  final IconData btnIcon;
  var iconShow = true;

  SqaureOutlineButtonWidget({
    Key key,
    @required this.btnTxt,
    this.btnOnTap,
    @required this.borderColor,
    @required this.textColor,
    @required this.btnIcon,
    this.iconShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          iconShow
              ? Icon(
                  btnIcon,
                  size: 20,
                  color: Color(0xff979797),
                )
              : SizedBox(),
          SizedBox(
            width: 2,
          ),
          Text(
            btnTxt,
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 15,
                  color: textColor,
                ),
          ),
        ],
      ),
      onPressed: btnOnTap,
      shape: StadiumBorder(),
      borderSide: BorderSide(
        color: borderColor,
        style: BorderStyle.solid,
        width: 1,
      ),
    );
  }
}
