import 'dart:async';

import 'package:flutter/material.dart';


import 'package:pokakaattendenceapp/Const/Catogeries.dart';
import 'package:pokakaattendenceapp/Const/Colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 20),
            ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>selectcategories())));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          color: bluecolor
          // gradient: LinearGradient(
          //   colors: [Colors.blue,bluecolor],
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomRight,
          //   tileMode: TileMode.mirror,
          //   transform: GradientRotation(400)
          // ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset('assets/pokaklogo2-removebg-preview.png'),
            )
          ],
        ),
      )
    );
  }
}
