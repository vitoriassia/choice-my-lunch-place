import 'package:flutter/material.dart';

String mergeTimeMeetingwithDatetoString(DateTime datetime, TimeOfDay time) {
  DateTime newDateTime = DateTime(
      datetime.year, datetime.month, datetime.day, time.hour, time.minute);
  print(newDateTime);
  return newDateTime.toString().substring(0, 19);
}

DateTime mergeTimeMeetingwithDatetoDateTime(DateTime datetime, TimeOfDay time) {
  DateTime newDateTime = DateTime(
      datetime.year, datetime.month, datetime.day, time.hour, time.minute);
  return newDateTime;
}
