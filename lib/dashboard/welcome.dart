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
      backgroundColor: Color(0xffeef2f5),
      appBar: AppBar(
        title: const Text(
          'Karachi',
          style: TextStyle(fontSize: 18),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(47),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    placeholder: 'Search shop & resturant',
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.search_outlined,
                        color: Color(0xff7b7b7b),
                      ),
                    ),
                    style: const TextStyle(
                        color: Color(0xff707070),
                        fontSize: 15,
                        fontFamily: regular),
                    decoration: BoxDecoration(
                        color: const Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
          ),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    right: 4,
                    left: 12,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: height * .18,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/biyani.jpg',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Food delivery',
                                  style:
                                      TextStyle(fontFamily: bold, fontSize: 20),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Order from youe\nfavourite restaurants ...',
                                  style: TextStyle(
                                      fontFamily: medium, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    right: 12,
                    left: 4,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: height * .18,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/clothes.jpg',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Shops',
                                  style:
                                      TextStyle(fontFamily: bold, fontSize: 20),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Everyday essentials',
                                  style:
                                      TextStyle(fontFamily: medium, fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    right: 4,
                    left: 12,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: height * .18,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/biyani.jpg',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Food delivery',
                                  style:
                                      TextStyle(fontFamily: bold, fontSize: 20),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Order from youe\nfavourite restaurants ...',
                                  style: TextStyle(
                                      fontFamily: medium, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    right: 4,
                    left: 12,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: height * .18,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/biyani.jpg',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Food delivery',
                                  style:
                                      TextStyle(fontFamily: bold, fontSize: 20),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Order from youe\nfavourite restaurants ...',
                                  style: TextStyle(
                                      fontFamily: medium, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
                  ]
                ),
              ],
            )
            ])
          ],
        ),
      ),
    );
  }
}
