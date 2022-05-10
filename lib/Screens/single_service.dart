import 'package:flutter/material.dart';

class SingleServiceScreen extends StatelessWidget {
  const SingleServiceScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('single service'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      );
}