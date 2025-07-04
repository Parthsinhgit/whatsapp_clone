import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Widgets/ui_helpper.dart';

class Loginscreen extends StatefulWidget {

  const Loginscreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    
    return _loginState();
  }
}

class _loginState extends State<Loginscreen> {
  TextEditingController phoneController=TextEditingController();
  String selectedcountry="India";
  List<String>countries=[
    "India",
    "America",
    "Africa",
    "Italy",
    "Germany"];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
           const SizedBox(
            height: 80,
          ),
           Center(child: UiHelpper.CustomText(text: "Enter Your Phone Number", height: 16,color: const Color(0XFF00A884),fontweight: FontWeight.bold ),),
            const SizedBox(height: 30,),
           UiHelpper.CustomText(text: "Whatsapp will need to verify your phone", height: 16),
           UiHelpper.CustomText(text: "number. Carrier charges may apply.", height: 16),
           UiHelpper.CustomText(text: " What's my number?", height: 16,color:  const Color(0XFF00A884)),
            const SizedBox(height: 50,),
           Padding(
             padding:  const EdgeInsets.only(left: 60,right: 60),
             child: DropdownButtonFormField(items: countries.map((String country){
                return DropdownMenuItem(value: country,child: Text(country),);
             }).toList(), onChanged: (newvalue){
              setState(() {
                selectedcountry=newvalue!;
              });
             },value: selectedcountry,decoration:  const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884))
                )
              ),
             ),
           ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+91",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF00A884)
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF00A884)
                        )
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF00A884)
                        )
                      )
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType:TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF00A884)
                        )
                      )
                    ),
                  ),
                )
              ],
            )   
        ],
      ),
      floatingActionButton: UiHelpper.CustomButton(callback: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}