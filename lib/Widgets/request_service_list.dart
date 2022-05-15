// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mechanic_app/Models/serv_req.dart';
import 'package:mechanic_app/Widgets/req_service_card.dart';

class ReqServiceList extends StatelessWidget {
  final List<ServiceRequest> serv_req = [
    ServiceRequest(
        id: 1,
        service_type: "Replace break pads",
        car_info: 'Toyota',
        location: 'Kings Street 20',
        req_date: DateTime(2022, 05, 10)),
    ServiceRequest(
        id: 2,
        service_type: "Replace break pads",
        car_info: 'Toyota',
        location: 'Kings Street 20',
        req_date: DateTime(2022, 05, 10)),
    ServiceRequest(
        id: 3,
        service_type: "Replace break pads",
        car_info: 'Toyota',
        location: 'Kings Street 20',
        req_date: DateTime(2022, 05, 10)),
    ServiceRequest(
        id: 4,
        service_type: "Replace break pads",
        car_info: 'Toyota',
        location: 'Kings Street 20',
        req_date: DateTime(2022, 05, 10)),
  ];

  // const ReqServiceList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Service Requests",
                  style: TextStyle(
                    color: Color.fromRGBO(19, 22, 33, 1),
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ServiceCard(serv: serv_req[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 15.0,
              );
            },
            itemCount: serv_req.length,
          )
        ],
      ),
    );
  }
}
