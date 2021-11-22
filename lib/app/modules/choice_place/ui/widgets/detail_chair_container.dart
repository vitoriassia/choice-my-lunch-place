import 'package:flutter/material.dart';

List<Widget> getChairContainer(int numberChair) {
  Widget baseContainerWithSizeBox = Column(
    children: [
      Container(
        width: 123,
        height: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 1, color: Colors.black)),
              width: 6,
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 1, color: Colors.black)),
              width: 6,
              height: 30,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 24.2,
      ),
    ],
  );
  Widget baseContainer = Column(
    children: [
      Container(
        width: 123,
        height: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 1, color: Colors.black)),
              width: 6,
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 1, color: Colors.black)),
              width: 6,
              height: 30,
            ),
          ],
        ),
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
