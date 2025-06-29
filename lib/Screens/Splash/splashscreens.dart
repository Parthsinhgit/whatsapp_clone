import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/OnBoard/OnBoardingscreen.dart';
import 'package:whatsapp_clone/Screens/Widgets/ui_helpper.dart';

class SplashScreens extends StatefulWidget{
  const SplashScreens({super.key});

   
  @override
  State<StatefulWidget> createState() {
    
    return _SplashScreenState();

  }
}

class _SplashScreenState extends State<SplashScreens> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboardingscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/whatsapp 1.png"),
              const SizedBox(height: 20,),
              UiHelpper.CustomText(text: "WhatsApp", height: 18,fontweight: FontWeight.bold)
            ],
          ),
        ),
    );
  }
}