import 'package:flutter/material.dart';
import 'package:mechanic_app/Screens/dashboard.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: BackButton(
      color: Colors.black,
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DashboardScreen()));
      },
    ),
    backgroundColor: Colors.white,
    elevation: 0,
  );
}
