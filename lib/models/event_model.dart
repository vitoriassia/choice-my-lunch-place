import 'package:choicemylunchplace/models/place_lunch_model.dart';
import 'package:flutter/material.dart';
import 'package:choicemylunchplace/extensions/date.dart';

class EventModel {
  DateTime startMeeting;
  DateTime endMeetting;
  PlaceLunchModel placeLunchModel;
  DateTime dateFind;

  EventModel(this.startMeeting, this.endMeetting, this.dateFind);

  TimeOfDay getStartTime() {
    return TimeOfDay(hour: startMeeting.hour, minute: startMeeting.minute);
  }

  TimeOfDay getEndTime() {
    return TimeOfDay(hour: endMeetting.hour, minute: endMeetting.minute);
  }

  Map<String, dynamic> toJson(int workstationId, context) {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["workstation_id"] = workstationId;
    data['date_start'] = dateFind.onlyDate();
    data['time_start'] = getStartTime().format(context);
    data['time_end'] = getEndTime().format(context);
    data['place_id'] = placeLunchModel.id;

    return data;
  }
}
