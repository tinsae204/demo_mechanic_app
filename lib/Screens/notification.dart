import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      );
}