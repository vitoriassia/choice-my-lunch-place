import 'package:flutter/material.dart';

List<Widget> getChair(int numberChair) {
  Widget baseContainerWithSizeBox = Column(
    children: [
      Container(
        width: 118,
        height: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(width: 1, color: Colors.black)),
      ),
      SizedBox(
        height: 17,
      )
    ],
  );
  Widget baseContainer = Column(
    children: [
      Container(
        width: 118,
        height: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(width: 1, color: Colors.black)),
      ),
    ],
  );

  List<Widget> listChair = [];

  for (var i = 0; i < numberChair; i++) {
    if (i == numberChair - 1) {
      listChair.add(baseContainer);
    } else {
      listChair.add(baseContainerWithSizeBox);
    }
  }

  return listChair;
}
