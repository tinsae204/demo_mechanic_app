import 'package:flutter/material.dart';
import 'package:mechanic_app/Widgets/drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mechanic_app/Utils/user_pref.dart';
import 'package:mechanic_app/Widgets/request_service_list.dart';
import 'package:mechanic_app/Widgets/scheduled_service_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'Screens/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {

    final user = UserPref.user;

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(202, 255, 255, 255),
        buttonBackgroundColor: Color.fromRGBO(29, 161, 242, 1),
        items: [
          Icon(
            FlutterIcons.speaker_notes_mdi,
            size: 30.0,
            color: activeIndex == 0 ? Colors.white : Color(0xFFC8C9CB),
          ),
          Icon(
            FlutterIcons.speaker_notes_off_mdi,
            size: 30.0,
            color: activeIndex == 0 ? Colors.white : Color(0xFFC8C9CB),
          ),
        ],
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },        
      ),
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blue),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        actions: [
          IconButton(
              padding: const EdgeInsets.fromLTRB(0, 6, 6, 0),
              icon: const Icon(Icons.notifications_none_outlined,
                  color: Colors.grey, size: 25),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
              })
        ],
      ),
      body: Stack(clipBehavior: Clip.none, children: [
        SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kToolbarHeight,
                ),
                Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 200.0,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Color.fromARGB(202, 255, 255, 255),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Text(
                          "Scheduled Requests",
                          style: const TextStyle(
                            color: Color.fromRGBO(19, 22, 33, 1),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      Container(
                        height: ScreenUtil().setHeight(100.0),
                        child: Center(
                          child: ScheduledReqSlider(),
                        ),
                      ),
                      ReqServiceList()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget buildTitle({required String name, required String imgUrl}) =>
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Welcome Back,\n",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      TextSpan(
                        text: name,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Image.asset(imgUrl)
              ],
            )
          ],
        ),
      );
}
