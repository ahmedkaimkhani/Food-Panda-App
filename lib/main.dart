import 'package:flutter/material.dart';
import 'package:food_panda_app/constats/color.dart';
import 'package:food_panda_app/constats/constants.dart';
import 'package:food_panda_app/splash%20screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: MyColors.navy,
          brightness: Brightness.light,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 2,
            titleTextStyle:
                TextStyle(fontFamily: bold, color: Color(0xfffcfcfc)),
            //iconTheme: IconThemeData(color: MyColors.primaryColor)
          )),
      // darkTheme: ThemeData(
      //     primarySwatch: MyColors.navy,
      //     brightness: Brightness.dark,
      //     scaffoldBackgroundColor: const Color(0xfffcfcfc),
      //     appBarTheme: const AppBarTheme(
      //       backgroundColor: Colors.white,
      //       elevation: 2,
      //       titleTextStyle:
      //           TextStyle(fontFamily: bold, color: Color(0xfffcfcfc)),
      //       //iconTheme: IconThemeData(color: MyColors.primaryColor)
      //     )
      //     ),
      home: const SplashScreen(),
    );
  }
}
