import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Help'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      );
}