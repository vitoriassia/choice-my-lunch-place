import 'package:choicemylunchplace/app/core/enums.dart';

class SeatModel {
  int? id;
  String? name;
  bool? isSelect;
  StatusSeat? status;
  SeatModel({this.id, this.name, this.isSelect, this.status});
}
