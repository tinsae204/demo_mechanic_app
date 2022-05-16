// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mechanic_app/Models/serv_req.dart';


class HistoryScreen extends StatelessWidget {
  // const HistoryScreen({ Key? key }) : super(key: key);

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

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
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
                      "Activity History",
                      style: TextStyle(
                        color: Color.fromRGBO(19, 22, 33, 1),
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      );
}