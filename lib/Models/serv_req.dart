
class ServiceRequest {
  int id;
  String service_type;
  String car_info;
  String location;
  DateTime req_date;

  ServiceRequest({
      required this.id,
      required this.service_type,
      required this.car_info,
      required this.location,
      required this.req_date
  });
}
