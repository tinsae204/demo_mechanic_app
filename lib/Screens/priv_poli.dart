import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Privacy and Policy'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      );
}