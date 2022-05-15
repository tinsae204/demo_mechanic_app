// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mechanic_app/Models/serv_req.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mechanic_app/Screens/single_service_request.dart';

class ServiceCard extends StatelessWidget {
  final ServiceRequest serv;

  ServiceCard({required this.serv});

  final DateFormat formatter = DateFormat("yyyy MM dd");
  // const ServiceCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SingleServiceRequest()));
      },
      child: Container(
        height: ScreenUtil().setHeight(121.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color.fromRGBO(220, 233, 245, 1),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Text(
          //   style: TextStyle(
          //     "Service Request",
          //     color: Color.fromRGBO(19, 22, 33, 1),
          //     fontSize: 16.0,
          //   )
          // ),
          children: [
            SizedBox(
              height: 10.0,
            ),
            TextRow("Service Type: ", serv.service_type),
            SizedBox(
              height: 5.0,
            ),
            TextRow("Requested at: ", formatter.format(serv.req_date))
          ],
        ),
      ),
    );
  }

  Widget TextRow(String txtOne, String txtTwo) {
    return Wrap(
      children: [
        Text(
          "$txtOne:",
          style: TextStyle(
            color: Color.fromRGBO(74, 77, 84, 0.7),
            fontSize: 14.0,
          ),
        ),
        Text(
          txtTwo,
          style: TextStyle(
            color: Color.fromRGBO(19, 22, 33, 1),
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
