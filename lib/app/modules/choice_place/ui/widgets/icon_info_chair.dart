import 'package:choicemylunchplace/app/modules/choice_place/ui/widgets/available_icon.dart';
import 'package:choicemylunchplace/app/core/constants.dart';
import 'package:choicemylunchplace/app/core/enums.dart';
import 'package:choicemylunchplace/app/core/models/seat_model.dart';
import 'package:choicemylunchplace/stores/choice_seat_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

List<Widget> iconInfoChair(List<SeatModel> sitModel, context, table) {
  List<Widget> listIcons = [];

  for (var i = 0; i < sitModel.length; i++) {
    if (i == sitModel.length - 1) {
      listIcons.add(iconSeat(sitModel[i], context, table));
    } else {
      listIcons.add(iconSeatWithSizeBox(sitModel[i], context, table));
    }
  }

  return listIcons;
}

iconSeatWithSizeBox(SeatModel seat, context, table) {
  return Column(
    children: [
      getWigetIcon(seat, context, table),
      SizedBox(
        height: 26,
      ),
    ],
  );
}

iconSeat(SeatModel seat, context, table) {
  return getWigetIcon(seat, context, table);
}

getWigetIcon(SeatModel seat, context, table) {
  switch (seat.status) {
    case StatusSeat.Busy:
      return Icon(
        Icons.account_circle,
        color: kPrimaryColor,
      );
      break;
    case StatusSeat.Unavailable:
      return Icon(Icons.remove_circle, color: Colors.red[900]);
      break;
    case StatusSeat.Available:
      return iconAvailableSeat(() {
        seat.isSelect = !seat.isSelect;
        Provider.of<ChoiceSeatStore>(context, listen: false)
            .setSeatListisSelect(seat, table);
      }, seat.isSelect);
      break;
    default:
  }
}
