import 'package:choicemylunchplace/constants.dart';
import 'package:flutter/material.dart';

Widget iconAvailableSeat(onTap, isSelect) {
  return InkWell(
    child: isSelect
        ? Container(
            decoration: BoxDecoration(
                color: kPrimaryColor,
                border: Border.all(color: kPrimaryColor, width: 1),
                shape: BoxShape.circle),
            width: 20,
            height: 20,
            child: Container(
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle),
              width: 10,
              height: 10,
            ))
        : Container(
            decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor, width: 1),
                shape: BoxShape.circle),
            width: 20,
            height: 20,
          ),
    onTap: onTap,
  );
}
