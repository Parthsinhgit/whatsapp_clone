import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Login/Loginscreen.dart';
import 'package:whatsapp_clone/Screens/Widgets/ui_helpper.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            const SizedBox(height: 20,),
            UiHelpper.CustomText(text: "Welcome to WhatsApp", height: 24,color: const Color(0XFF000000)),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelpper.CustomText(text: "Read Out ", height: 14),
                UiHelpper.CustomText(text: "Privacy Policy.", height: 14,color: const Color(0XFF0C42CC)),
                UiHelpper.CustomText(text: " Tap ''Agree and continue''", height: 14),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelpper.CustomText(text: "to accept the", height: 14),
                UiHelpper.CustomText(text: " Teams of Serive.", height: 14,color: const Color(0XFF0C42CC)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelpper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
      }, buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}