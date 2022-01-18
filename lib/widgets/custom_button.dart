import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {

   CustomButton({
    Key? key,
    
    required this.btnColor,
        required this.btnTxt,
            required this.large,
                required this.callBack,
  }) : super(key: key);
  Color? btnColor;
  String btnTxt;
  bool large;
  Function callBack;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: large==true?3:1,
      child: GestureDetector(
        onTap:(){
          callBack(btnTxt);
        },
        child: Container(
          alignment: Alignment.center,
          margin: Constants.btnMargin,
           
          width:70,
          height: 80,
           
          decoration:  BoxDecoration(
         
            borderRadius: BorderRadius.circular(30),
            color:large==true?Colors.grey: btnColor
           
          ),
          child:  Text(btnTxt,style: TextStyle(fontSize: Constants.fontSize,color: Colors.black,fontWeight: Constants.fontWeight),),
        ),
      ),
    );
  }
}
