// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mechanic_app/Models/rating.dart';

class RatingCard extends StatelessWidget {
  // const RatingCard({ Key? key }) : super(key: key);
  final Rating rating;

  RatingCard({required this.rating});

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
              rating.customer,
              style: TextStyle(
                color: Color.fromRGBO(19, 22, 33, 1),
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
