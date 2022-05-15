import 'package:flutter/material.dart';
import 'package:mechanic_app/Models/user.dart';
import 'package:mechanic_app/Utils/user_pref.dart';
import 'package:mechanic_app/Widgets/btn_widget.dart';
import 'package:mechanic_app/Widgets/profile_widget.dart';
import 'package:mechanic_app/Widgets/textfield_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final user = UserPref.user;

    return Scaffold(
          appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0
      
        ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
          ),
          const SizedBox(height: 24),
          buildName(user)
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.fullname,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
              label: 'Full Name', text: user.fullname, onChanged: (name) {}),
          const SizedBox(height: 24),
          TextFieldWidget(
              label: 'Email', text: user.email, onChanged: (email) {}),
          const SizedBox(height: 24),
          TextFieldWidget(
              label: 'Phone Number', text: user.phone, onChanged: (phone) {}),
          const SizedBox(height: 24),
          Center(child: buildUpdateBtn())
        ],
      );

  Widget buildUpdateBtn() => BtnWidget(
    text: "Update Profile",
    onClicked: () {}
  );
}
