// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mechanic_app/Models/rating.dart';
import 'package:mechanic_app/Widgets/rating_widget.dart';

class RatingsScreen extends StatelessWidget {
  // const RatingsScreen({ Key? key }) : super(key: key);

  final List<Rating> rating = [
    Rating(
      customer: 'user1',
      rating: 2
    ),
    Rating(
      customer: 'user2',
      rating: 3
    ),
    Rating(
      customer: 'user3',
      rating: 1
    ),
    Rating(
      customer: 'user4',
      rating: 4
    ),
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
                      "Ratings",
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
                  return RatingCard(rating: rating[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 15.0,
                  );
                },
                itemCount: rating.length
              ),
            ],
          ),
        ),
      );
}