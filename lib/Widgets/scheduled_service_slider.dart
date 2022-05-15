import 'package:flutter/material.dart';
import 'package:mechanic_app/Models/sch_req.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ScheduledReqSlider extends StatelessWidget {

  // ScheduledReqSlider({ Key? key }) : super(key: key);

  List<ScheduleRequest> sch_requests = [
    ScheduleRequest(
        service_type: "Oil change",
        color: Color.fromRGBO(89, 69, 199, 1),
        date_: DateTime(2022),
        car_info: 'Toyota',
        location: 'Kings Street 20'
        ),
    ScheduleRequest(
        service_type: "Replace break pads",
        color: Color.fromRGBO(237, 116, 41, 1),
        date_: DateTime(2022),
        car_info: 'Toyota',
        location: 'Victory Square 18'
        ),
    ScheduleRequest(
        service_type: "Victory Square 18",
        color: Color.fromARGB(255, 48, 94, 168),
        date_: DateTime(2022),
        car_info: 'Toyota',
        location: 'Ayat'
        // imagePath: "assets/images/house2.png",
        )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(90.0),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: ScreenUtil().setWidth(200.0),
              decoration: BoxDecoration(
                  color: sch_requests[index].color,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(169, 176, 185, 0.42),
                      spreadRadius: 0,
                      blurRadius: 8.0,
                      offset: Offset(0, 2),
                    ),
                  ]),
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 12.0,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "${sch_requests[index].service_type},\n",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: sch_requests[index].location,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        itemCount: sch_requests.length,
      ),
    );
  }
}
