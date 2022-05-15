import 'dart:ui';

class ScheduleRequest {
  late String service_type;
  late String car_info;
  late DateTime date_;
  late String location;
  late Color color;

  ScheduleRequest(
      {required this.service_type,
      required this.car_info,
      required this.date_,
      required this.location,
      required this.color});

  ScheduleRequest.fromMap(Map map)
      : service_type = map['service_type'],
        car_info = map['car_info'],
        date_ = map['date_'],
        location = map['location'],
        color = map['color'];

  Map toMap() {
    return {
      'service_type': service_type,
      'car_info': car_info,
      'date_': date_,
      'location': location,
      'color': color
    };
  }
}
