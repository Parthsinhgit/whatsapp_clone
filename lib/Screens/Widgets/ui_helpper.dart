
import 'package:flutter/material.dart';

class UiHelpper {
  // ignore: non_constant_identifier_names
  static CustomButton({required VoidCallback callback, required String buttonname}){
    return SizedBox(
      height: 40,
      width: 350,
      child: ElevatedButton(onPressed: (){
        callback();
      }, child: Text(buttonname,style: const TextStyle(fontSize: 14,color: Colors.white),),
      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40))
      ),),
    );
  }
  // ignore: non_constant_identifier_names
  static CustomText({required String text,required double height,Color? color, FontWeight?  fontweight}){
    return Text(text,style: TextStyle(fontSize: height,color: color??const Color(0XFF5E5E5E),
    fontWeight: fontweight 
      ),
    );
  }
}

