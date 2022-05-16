// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mechanic_app/Models/payment.dart';
import 'package:mechanic_app/Widgets/payment_widget.dart';

class PaymentScreen extends StatelessWidget {
  // const PaymentScreen({ Key? key }) : super(key: key);

  final List<Payment> payment = [
    Payment(
        ref_no: "#123",
        amount: 4000,
        percent: 12,
        date_: DateTime(2022, 05, 10)),
    Payment(
        ref_no: "#123",
        amount: 4000,
        percent: 12,
        date_: DateTime(2022, 05, 10)),
    Payment(
        ref_no: "#123",
        amount: 4000,
        percent: 12,
        date_: DateTime(2022, 05, 10)),
    Payment(
        ref_no: "#123",
        amount: 4000,
        percent: 12,
        date_: DateTime(2022, 05, 10))
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
                  "Service Requests",
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
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return PaymentCard(payment: payment[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 15.0,
              );
              },
              itemCount: payment.length
            )
        ],
      )));
}
