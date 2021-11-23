import 'package:choicemylunchplace/app/core/constants.dart';
import 'package:flutter/material.dart';

class SweetButton extends StatelessWidget {
  final Function? onPressed;
  final String text;
  final IconData? icon;
  final Color? textcolor;
  final Color? color;
  const SweetButton(
      {Key? key,
      this.onPressed,
      required this.text,
      this.icon,
      this.textcolor,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color ?? kPrimaryColor,
          elevation: 8,
          textStyle: TextStyle(
            color: textcolor ?? kSecondColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.0),
          )),
      onPressed: onPressed as void Function()?,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icon != null ? Icon(icon) : Container(),
          SizedBox(width: 16.0),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
