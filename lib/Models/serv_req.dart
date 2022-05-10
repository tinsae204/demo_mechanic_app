import 'dart:ui';

import 'package:intl/intl.dart';

class ServiceRequest {
  final int id;
  final String service_type;
  final String car_info;
  final String location;
  final DateTime req_date;

  const ServiceRequest({
      required this.id,
      required this.service_type,
      required this.car_info,
      required this.location,
      required this.req_date
  });
}
