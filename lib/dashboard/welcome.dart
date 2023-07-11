import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_app/constats/color.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) :super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.navy,
          bottom: PreferredSize(
            child: Row(
              children: [
                CupertinoTextField(
                  
                )
              ],
            ), 
            preferredSize: Size.fromHeight(40),
            ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ],
        ),
        drawer: const Drawer(
          child: DrawerHeader(
            child: Text('Login'),
            decoration: BoxDecoration(
              color: MyColors.navy
            ),
            ),
        ),
      ),
    );
  }
}