import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trackr/CustomText.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'login');
    });
  }

  Widget build(BuildContext context) {
    var Mheight = MediaQuery.of(context).size.height;
    var Mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: Mheight * 0.06,
                ),
                Image.asset('assets/images/splashlogo.png'),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: 'Welcome to TrackR.io',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(text: 'TrackR.io will help you to stay'),
                SizedBox(
                  height: 3,
                ),
                CustomText(text: 'organized and perform your '),
                SizedBox(
                  height: 3,
                ),
                CustomText(text: 'task much faster'),
                SizedBox(
                  height: Mheight * 0.034,
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/images/bottomimg.png',
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                        color: Color(0xFF407BFF),
                      )),
                )
              ]),
        ),
      ),
    );
  }
}
