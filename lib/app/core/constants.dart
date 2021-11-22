import 'package:choicemylunchplace/app/core/enums.dart';
import 'package:choicemylunchplace/app/core/models/seat_model.dart';
import 'package:flutter/material.dart';

const kAppGrey = Color(0xfffafafa);
const kPrimaryColor = Color(0xffeb8913);
const kSecondColor = Color(0xfffeef94);
const kAppTitleBlack =
    TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold);

List<List<SeatModel>> listTable = [
  [
    SeatModel(id: 1, isSelect: false, status: StatusSeat.Available, name: 'h1'),
    SeatModel(
        id: 2, isSelect: false, status: StatusSeat.Unavailable, name: 'h2'),
    SeatModel(id: 3, isSelect: false, status: StatusSeat.Available, name: 'h3'),
    SeatModel(
        id: 4, isSelect: false, status: StatusSeat.Unavailable, name: 'h4'),
    SeatModel(id: 5, isSelect: false, status: StatusSeat.Available, name: 'h5'),
    SeatModel(
        id: 6, isSelect: false, status: StatusSeat.Unavailable, name: 'h6'),
    SeatModel(id: 7, isSelect: false, status: StatusSeat.Busy, name: 'h7'),
    SeatModel(id: 8, isSelect: false, status: StatusSeat.Busy, name: 'h8'),
  ],
  [
    SeatModel(id: 1, isSelect: false, status: StatusSeat.Available, name: 'h1'),
    SeatModel(
        id: 2, isSelect: false, status: StatusSeat.Unavailable, name: 'h2'),
    SeatModel(id: 3, isSelect: false, status: StatusSeat.Available, name: 'h3'),
    SeatModel(
        id: 4, isSelect: false, status: StatusSeat.Unavailable, name: 'h4'),
    SeatModel(id: 5, isSelect: false, status: StatusSeat.Available, name: 'h5'),
    SeatModel(
        id: 6, isSelect: false, status: StatusSeat.Unavailable, name: 'h6'),
    SeatModel(id: 7, isSelect: false, status: StatusSeat.Busy, name: 'h7'),
    SeatModel(id: 8, isSelect: false, status: StatusSeat.Busy, name: 'h8'),
  ],
  [
    SeatModel(id: 1, isSelect: false, status: StatusSeat.Available, name: 'h1'),
    SeatModel(
        id: 2, isSelect: false, status: StatusSeat.Unavailable, name: 'h2'),
    SeatModel(id: 3, isSelect: false, status: StatusSeat.Available, name: 'h3'),
    SeatModel(
        id: 4, isSelect: false, status: StatusSeat.Unavailable, name: 'h4'),
    SeatModel(id: 5, isSelect: false, status: StatusSeat.Available, name: 'h5'),
    SeatModel(
        id: 6, isSelect: false, status: StatusSeat.Unavailable, name: 'h6'),
    SeatModel(id: 7, isSelect: false, status: StatusSeat.Busy, name: 'h7'),
    SeatModel(id: 8, isSelect: false, status: StatusSeat.Busy, name: 'h8'),
  ],
];
