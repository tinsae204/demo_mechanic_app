// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../Models/serv_req.dart';

class HistoryCard extends StatelessWidget {

  final ServiceRequest serv;

  HistoryCard({required this.serv});  
  final DateFormat formatter = DateFormat("yyyy MM dd");
  // const HistoryCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          children: [
            Text(
              serv.service_type,
              style: TextStyle(
                color: Color.fromRGBO(19, 22, 33, 1),
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextRow("Date: ", formatter.format(serv.req_date))
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