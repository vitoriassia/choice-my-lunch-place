import 'package:choicemylunchplace/app/core/models/seat_model.dart';
import 'package:choicemylunchplace/app/modules/choice_place/store/choice_place_store.dart';
import 'package:choicemylunchplace/app/modules/choice_place/ui/widgets/detail_chair_container.dart';
import 'package:choicemylunchplace/app/modules/choice_place/ui/widgets/icon_info_chair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'chair_container.dart';

class EightSeatTableContainer extends StatelessWidget {
  final int numberTable;
  EightSeatTableContainer(this.numberTable);
  final choicePlaceStore = Modular.get<ChoicePlaceStore>();

  @override
  Widget build(BuildContext context) {
    List<SeatModel> listSeat = choicePlaceStore.listOfPlace![numberTable];
    return Container(
      width: 150,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Container(
              height: 180,
              width: 200,
              child: Column(children: getChair(4)),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: getChairContainer(4),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 200 * 0.20,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        children: iconInfoChair(
                            listSeat.sublist(0, 4), context, numberTable),
                      )),
                  Container(
                      height: 180,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: 200 * 0.20,
                    child: Column(
                      children: iconInfoChair(
                          listSeat.sublist(4, 8), context, numberTable),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
