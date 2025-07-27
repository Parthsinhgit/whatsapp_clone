import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Profile/profile_screen.dart';
import 'package:whatsapp_clone/Screens/Widgets/ui_helpper.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  String phonenumber;
  OtpScreen({super.key, required this.phonenumber});
  TextEditingController otp1Controller=TextEditingController();
  TextEditingController otp2Controller=TextEditingController();
  TextEditingController otp3Controller=TextEditingController();
  TextEditingController otp4Controler=TextEditingController();
  TextEditingController otp5Controller=TextEditingController();
  TextEditingController otp6Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80,),
            UiHelpper.CustomText(text: "Verifying your number ", height: 20,color: const Color(0XFF00A884),fontweight: FontWeight.bold),
            const SizedBox(height: 30,),
            UiHelpper.CustomText(text: "You’ve tried to register +91 $phonenumber", height: 15),
            UiHelpper.CustomText(text: "recently. Wait before requesting an sms or a call.", height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelpper.CustomText(text: " with your code. ", height: 15),
                GestureDetector(onTap: (){}, child: UiHelpper.CustomText(text: "Wrong number?", height: 15,color: const Color(0XFF00A884)))
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelpper.CustomContainer(otp1Controller),
                const SizedBox(width: 10,),
                UiHelpper.CustomContainer(otp2Controller),
                const SizedBox(width: 10,),
                UiHelpper.CustomContainer(otp3Controller),
                const SizedBox(width: 10,),
                UiHelpper.CustomContainer(otp4Controler),
                const SizedBox(width: 10,),
                UiHelpper.CustomContainer(otp5Controller),
                const SizedBox(width: 10,),
                UiHelpper.CustomContainer(otp6Controller),
                
              ],
            ),
            const SizedBox(height: 30,),
            UiHelpper.CustomText(text: "Didn’t receive code?", height: 15,color: const Color(0XFF00A884))
          ],
        ),
      ),
      floatingActionButton: UiHelpper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}