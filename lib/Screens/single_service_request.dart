// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mechanic_app/main.dart';

class SingleServiceRequest extends StatefulWidget {
  const SingleServiceRequest({Key? key}) : super(key: key);

  @override
  State<SingleServiceRequest> createState() => _SingleServiceRequestState();
}

class _SingleServiceRequestState extends State<SingleServiceRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 161, 242, 1),
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: kToolbarHeight,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Details About\n",
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          TextSpan(
                            text: "Request #521",
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color.fromRGBO(220, 233, 245, 1),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 16.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Request Details",
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: Color.fromRGBO(74, 77, 84, 1),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "Requested Services",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(143, 148, 162, 1),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          getItemRow("Service One"),
                          getItemRow("Service Two"),
                          getItemRow("Service Three"),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(143, 148, 162, 1),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          getItemRow("Location Details"),
                          Divider(),
                          getRequestedAt("Requested At", "10-3-2021"),
                          SizedBox(
                            height: 10.0,
                          ),
                          getShowLocationBtn()
                        ],
                      ),
                    ),

                    SizedBox(height: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                      height: ScreenUtil().setHeight(127.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              color: Color.fromRGBO(29, 161, 242, 1),
                              child: Text("Accept", style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MainPage()));
                              }
                            ),
                            SizedBox(width: 5),
                            RaisedButton(
                              color: Color.fromARGB(255, 159, 67, 5),
                              child: Text("Decline", style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MainPage()));
                              }
                            )
                          ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getItemRow(String item) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text(
            item,
            style: TextStyle(
              color: Color.fromRGBO(74, 77, 84, 1),
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget getRequestedAt(String title, String date) {
    return Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color.fromRGBO(74, 77, 84, 1),
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              date,
              style: TextStyle(
                color: Color.fromRGBO(74, 77, 84, 1),
                fontSize: 15.0,
              ),
            )
          ],
        ));
  }

  Widget getShowLocationBtn() {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: ScreenUtil().setHeight(30.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 161, 242, 1),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  "Show Location",
                  style: TextStyle(color: Colors.white, fontSize: 16)
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
