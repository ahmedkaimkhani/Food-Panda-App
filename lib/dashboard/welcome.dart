import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_app/constats/color.dart';
import 'package:food_panda_app/constats/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Karachi'),
        backgroundColor: MyColors.navy,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: MyColors.primaryColor,
              ),
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('images/ahmed.jpg'),
                 //backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Help center',
                style: TextStyle(fontFamily: medium),
              ),
              leading: Icon(
                Icons.help_outline,
                color: MyColors.primaryColor,
              ),
            ),
            ListTile(
              title: Text(
                'foodpanda for buisness',
                style: TextStyle(fontFamily: medium),
              ),
              leading: Icon(
                Icons.business_rounded,
                color: MyColors.primaryColor,
              ),
            ),
            ListTile(
              title: Text(
                'invite friends',
                style: TextStyle(fontFamily: medium),
              ),
              leading: Icon(
                Icons.card_giftcard_sharp,
                color: MyColors.primaryColor,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontFamily: medium),
              ),
            ),
            ListTile(
              title: Text(
                'Terms & Conditions / Privacy.',
                style: TextStyle(fontFamily: medium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
