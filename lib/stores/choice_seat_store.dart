import 'package:choicemylunchplace/enums.dart';
import 'package:choicemylunchplace/models/event_model.dart';
import 'package:choicemylunchplace/models/place_lunch_model.dart';
import 'package:choicemylunchplace/models/seat_model.dart';
import 'package:choicemylunchplace/utils/mergeDateandTimeToDateTime.dart';
import 'package:flutter/material.dart';

class ChoiceSeatStore with ChangeNotifier {
  StatusBooking _bookignStatus;

  final GlobalKey<AnimatedListState> key = GlobalKey();

  bool verifyStatusDate = false;

  int _roomId;

  int selectedDayIndex;

  String _title;

  DateTime _dateSelect = DateTime.now();
  TimeOfDay _startMeeting;
  TimeOfDay _endMeeting;

  List<List<SeatModel>> listTable = [
    [
      SeatModel(
          id: 1, isSelect: false, status: StatusSeat.Available, name: 'h1'),
      SeatModel(
          id: 2, isSelect: false, status: StatusSeat.Unavailable, name: 'h2'),
      SeatModel(
          id: 3, isSelect: false, status: StatusSeat.Available, name: 'h3'),
      SeatModel(
          id: 4, isSelect: false, status: StatusSeat.Unavailable, name: 'h4'),
      SeatModel(
          id: 5, isSelect: false, status: StatusSeat.Available, name: 'h5'),
      SeatModel(
          id: 6, isSelect: false, status: StatusSeat.Unavailable, name: 'h6'),
      SeatModel(id: 7, isSelect: false, status: StatusSeat.Busy, name: 'h7'),
      SeatModel(id: 8, isSelect: false, status: StatusSeat.Busy, name: 'h8'),
    ],
    [
      SeatModel(
          id: 1, isSelect: false, status: StatusSeat.Available, name: 'h1'),
      SeatModel(
          id: 2, isSelect: false, status: StatusSeat.Unavailable, name: 'h2'),
      SeatModel(
          id: 3, isSelect: false, status: StatusSeat.Available, name: 'h3'),
      SeatModel(
          id: 4, isSelect: false, status: StatusSeat.Unavailable, name: 'h4'),
      SeatModel(
          id: 5, isSelect: false, status: StatusSeat.Available, name: 'h5'),
      SeatModel(
          id: 6, isSelect: false, status: StatusSeat.Unavailable, name: 'h6'),
      SeatModel(id: 7, isSelect: false, status: StatusSeat.Busy, name: 'h7'),
      SeatModel(id: 8, isSelect: false, status: StatusSeat.Busy, name: 'h8'),
    ],
    [
      SeatModel(
          id: 1, isSelect: false, status: StatusSeat.Available, name: 'h1'),
      SeatModel(
          id: 2, isSelect: false, status: StatusSeat.Unavailable, name: 'h2'),
      SeatModel(
          id: 3, isSelect: false, status: StatusSeat.Available, name: 'h3'),
      SeatModel(
          id: 4, isSelect: false, status: StatusSeat.Unavailable, name: 'h4'),
      SeatModel(
          id: 5, isSelect: false, status: StatusSeat.Available, name: 'h5'),
      SeatModel(
          id: 6, isSelect: false, status: StatusSeat.Unavailable, name: 'h6'),
      SeatModel(id: 7, isSelect: false, status: StatusSeat.Busy, name: 'h7'),
      SeatModel(id: 8, isSelect: false, status: StatusSeat.Busy, name: 'h8'),
    ],
  ];

  setSeatListisSelect(SeatModel seat, int table) {
    var indexOfSeat = listTable[table].indexOf(seat);
    listTable[table][indexOfSeat] = seat;
    for (var indexListTable = 0;
        indexListTable < listTable.length;
        indexListTable++) {
      for (var indexTable = 0;
          indexTable < listTable[indexListTable].length;
          indexTable++) {
        if (indexTable != indexOfSeat || indexListTable != table) {
          listTable[indexListTable][indexTable].isSelect = false;
        }
      }
    }
    notifyListeners();
  }

  bool isSelectSeat() {
    bool existElementSelect = false;
    for (var indexListTable = 0;
        indexListTable < listTable.length;
        indexListTable++) {
      for (var indexTable = 0;
          indexTable < listTable[indexListTable].length;
          indexTable++) {
        if (listTable[indexListTable][indexTable].isSelect) {
          existElementSelect = true;
        }
      }
    }

    return existElementSelect;
  }

  StatusBooking get bookingStatus => _bookignStatus;
  int get roomId => _roomId;
  String get title => _title;

  List<EventModel> _multDaySelect = [];

  TimeOfDay get endMeeting => _endMeeting;
  TimeOfDay get startMeeting => _startMeeting;
  DateTime get dateSelect => _dateSelect;
  String get dateStart =>
      mergeTimeMeetingwithDatetoString(dateSelect, startMeeting);
  String get dateEnd =>
      mergeTimeMeetingwithDatetoString(dateSelect, endMeeting);

  verifyLoading(bool newStatus) {
    verifyStatusDate = newStatus;
    notifyListeners();
  }

  List<EventModel> get multDaySelect => _multDaySelect;

  addDayList(EventModel date) {
    _multDaySelect.add(date);
    notifyListeners();
  }

  setMultDaySelect(List<EventModel> newMult) {
    _multDaySelect = newMult;
    notifyListeners();
  }

  removeAllDayList() {
    _multDaySelect.clear();
  }

  removeDayList(EventModel date) {
    _multDaySelect.remove(date);

    notifyListeners();
  }

  setTimeMultDayStart(DateTime date, TimeOfDay time) {
    var index =
        _multDaySelect.indexWhere((EventModel item) => item.dateFind == date);

    _multDaySelect[index].startMeeting =
        mergeTimeMeetingwithDatetoDateTime(date, time);

    notifyListeners();
  }

  setTimeMultDayEnd(DateTime date, TimeOfDay time) {
    var index =
        _multDaySelect.indexWhere((EventModel item) => item.dateFind == date);

    _multDaySelect[index].endMeetting =
        mergeTimeMeetingwithDatetoDateTime(date, time);

    notifyListeners();
  }

  setDataSelect(DateTime newDataSelect) {
    _dateSelect = newDataSelect;
    notifyListeners();
  }

  setStatusBooking(StatusBooking bookingStatus) {
    _bookignStatus = bookingStatus;
    notifyListeners();
  }

  setStartMeetingTime(TimeOfDay newStartTime) {
    _startMeeting = newStartTime;
    notifyListeners();
  }

  setEndMeetingTime(TimeOfDay newEndTime) {
    _endMeeting = newEndTime;
    notifyListeners();
  }

  setRoomId(int newRoomId) {
    _roomId = newRoomId;
    notifyListeners();
  }

  setTitle(String newTitle) {
    _title = newTitle;
    notifyListeners();
  }

  clearForm() {
    for (var indexListTable = 0;
        indexListTable < listTable.length;
        indexListTable++) {
      for (var indexTable = 0;
          indexTable < listTable[indexListTable].length;
          indexTable++) {
        listTable[indexListTable][indexTable].isSelect = false;
      }
    }

    removeAllDayList();
  }

  setChoicedPlaceItem(PlaceLunchModel placeselected, int index) {
    _multDaySelect[index].placeLunchModel = placeselected;
    notifyListeners();
  }

  int setIndexSelectedDay(EventModel eventModel) =>
      selectedDayIndex = _multDaySelect.indexOf(eventModel);
}
