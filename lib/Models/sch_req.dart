import 'dart:ui';

class ScheduleRequest {
  final String service_type;
  final String car_info;
  final DateTime date_;
  final String location;
  final Color color;

  const ScheduleRequest(
      {required this.service_type,
      required this.car_info,
      required this.date_,
      required this.location,
      required this.color});
}
