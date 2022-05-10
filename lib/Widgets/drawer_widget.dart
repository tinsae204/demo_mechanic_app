import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mechanic_app/Screens/help.dart';
import 'package:mechanic_app/Screens/history.dart';
import 'package:mechanic_app/Screens/landing.dart';
import 'package:mechanic_app/Screens/payment.dart';
import 'package:mechanic_app/Screens/priv_poli.dart';
import 'package:mechanic_app/Screens/profile.dart';
import 'package:mechanic_app/Screens/ratings.dart';
import 'package:mechanic_app/Utils/user_pref.dart';
import 'package:mechanic_app/main.dart';

class DrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  // const DrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPref.user;
    return Drawer(
      child: Material(
        color: Color.fromRGBO(29, 161, 242, 1),
        child: ListView(children: <Widget>[
          buildHeader(
              imgUrl: user.imagePath,
              name: user.fullname,
              onClicked: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()))
          ),
          Container(
            padding: padding,
            child: Column(
              children: [
                const SizedBox(height: 12),
                buildMenuItem(
                  text: 'Dashboard',
                  icon: Icons.dashboard_customize_outlined,
                  onClicked: () => selectedItem(context, 0),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Payment',
                  icon: Icons.payment_outlined,
                  onClicked: () => selectedItem(context, 1),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'History',
                  icon: Icons.history_outlined,
                  onClicked: () => selectedItem(context, 2),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Rating',
                  icon: Icons.star_border_outlined,
                  onClicked: () => selectedItem(context, 3),
                ),
                const SizedBox(height: 16),
                Divider(thickness: 2),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Privacy and Policy',
                  icon: Icons.settings_outlined,
                  onClicked: () => selectedItem(context, 5),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Help',
                  icon: Icons.question_mark_outlined,
                  onClicked: () => selectedItem(context, 6),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Logout',
                  icon: Icons.logout_outlined,
                  onClicked: () => selectedItem(context, 7),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildHeader({
    required String imgUrl,
    required String name,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(imgUrl)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromARGB(255, 20, 119, 181),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Color.fromARGB(255, 20, 119, 181);

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PaymentScreen(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HistoryScreen(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RatingsScreen(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PrivacyPolicy(),
        ));
        break; 
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HelpScreen(),
        ));
        break; 
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LandingScreen(),
        ));
        break;                                             
    }
  }
}
