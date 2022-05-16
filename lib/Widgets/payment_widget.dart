// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mechanic_app/Models/payment.dart';

class PaymentCard extends StatelessWidget {
  final Payment payment;

  PaymentCard({required this.payment});

  // const PaymentCard({ Key? key }) : super(key: key);

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
              payment.ref_no,
              style: TextStyle(
                color: Color.fromRGBO(19, 22, 33, 1),
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            AmountRow("Amount: ", payment.amount),
            SizedBox(
              height: 5.0,
            ),
            AmountRow("Rate: ", payment.percent),
            SizedBox(
              height: 5.0,
            ),
            AmountRow("To be Paid: ", (payment.amount * payment.percent) / 100)
          ],
        ),
      ),
    );
  }

  Widget AmountRow(String label, double amount) {
    return Wrap(
      children: [
        Text(
          "$label:",
          style: TextStyle(
            color: Color.fromRGBO(74, 77, 84, 0.7),
            fontSize: 14.0,
          ),
        ),
        Text(
          "$amount",
          style: TextStyle(
            color: Color.fromRGBO(19, 22, 33, 1),
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
