import 'package:flutter/material.dart';

class RatingsScreen extends StatelessWidget {
  const RatingsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Ratings'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      );
}