import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_taxi_booking_driver_app/common/my_colors.dart';


class CountrySelectionTextField extends StatefulWidget {
  final TextEditingController myController;
  FocusNode myFocusNode;
  final String hintText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final EdgeInsetsGeometry myMargin;
  final Function(String) onChanged;
  final Function(String) onSubmited;

  CountrySelectionTextField({
    this.myController,
    this.myFocusNode,
    this.myMargin = const EdgeInsets.all(0),
    @required this.hintText,
    this.inputType = TextInputType.number,
    this.inputAction = TextInputAction.done,
    this.onChanged,
    this.onSubmited,
  });

  @override
  _CountrySelectionTextFieldState createState() =>
      _CountrySelectionTextFieldState();
}

class _CountrySelectionTextFieldState extends State<CountrySelectionTextField> {
  var _selectIoCode = "FR";
  var _selectPhoneCode = "33";

  @override
  void dispose() {
//    widget.myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.myMargin,
      height: 52,
      decoration: BoxDecoration(
        color: kShareCodeBg,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          top: 4,
          bottom: 4,
        ),
        child: Row(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _openCountryPickerDialog();
                    },
                    child: Container(
                        child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30 / 2),
                          child: Container(
                            height: 30,
                            width: 30,
                            child: Image.asset(
                              CountryPickerUtils.getFlagImageAssetPath(
                                  "${_selectIoCode}"),
                              height: 20.0,
                              width: 30.0,
                              fit: BoxFit.fitHeight,
                              package: "country_pickers",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("+${_selectPhoneCode}"),
                        Icon(
                          Icons.arrow_drop_down,
                          color: kDottedBorder,
                          size: 25,
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Opacity(
                opacity: 0.64,
                child: TextField(
                  maxLength: 12,
                  autofocus: false,
                  controller: widget.myController,
                  focusNode:
                      widget.myFocusNode != null ? widget.myFocusNode : null,
                  keyboardType: TextInputType.number,
                  textInputAction: widget.inputAction,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    fillColor: Colors.grey,
                    counterText: "",
                  ),
                  onChanged: (str) {
                    widget.onChanged(str);
                  },
                  onSubmitted: (str) {
                    widget.onSubmited(str);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context),
          child: CountryPickerDialog(
              titlePadding: EdgeInsets.all(8.0),
              searchInputDecoration: InputDecoration(hintText: 'Search...'),
              isSearchable: true,
              title: Text('Select your phone code'),
              onValuePicked: (Country country) {
                print(country.isoCode);
                setState(() => _selectIoCode = country.isoCode);
                setState(() => _selectPhoneCode = country.phoneCode);
              },
              itemBuilder: _buildDropdownItem),
        ),
      );

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            Container(
              child: CountryPickerUtils.getDefaultFlagImage(country),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text("+${country.phoneCode} (${country.name})"),
          ],
        ),
      );
}
