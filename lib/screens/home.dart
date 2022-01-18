import 'package:calculator/constants/constants.dart';
import 'package:calculator/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 String exprition='';
  String history='';
  double num1=0;
    double num2=0;

  String op='';
  void numClick(String txt){
if(txt=='AC'){

    num1=0;
    num2=0;
    history='';
     exprition='';

}
else if(txt=='C'){
   exprition='';
}
else if(txt=='+'||txt=='-'||txt=='/'||txt=='x'){
  num1=double.parse(exprition);
  op=txt;
  exprition='';
  history=num1.toString();

}else if(txt=='.'){
  if(exprition.contains('.')){

    
  }else{
    exprition+=txt;
  }
}else if(txt=='='){
    history=exprition;
  num2=double.parse(exprition);
  if(op=='+'){

  exprition=(num1+num2).toString();

  }
    if(op=='/'){
num2==0?exprition='can\'t divide by zero':
  exprition=(num1/num2).toString();

  }
    if(op=='x'){

  exprition=(num1*num2).toString();
  }
    if(op=='-'){

  exprition=(num1-num2).toString();
num1=num2=0;
  }

}
  else{
      exprition+=txt;
      
  }

setState(() {
  
});


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:AppBar(centerTitle: true,title: Text("poor calculator",style: GoogleFonts.mcLaren(fontSize:27,fontWeight:FontWeight.bold),),),
      body: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,children: [
Container(margin: Constants.txtMargin,alignment: Alignment.centerRight,child: Text(history,style: Constants.historyText,)),
Container(margin: Constants.txtMargin,alignment: Alignment.centerRight,child: Text(exprition,style: Constants.actualText,)),

Row(children: [
  CustomButton(btnColor: Colors.yellow,btnTxt: "AC",large: false,callBack: numClick,),
    CustomButton(btnColor: Colors.pink,btnTxt: "C",large: false,callBack: numClick,),
      CustomButton(btnColor: Colors.blue,btnTxt: "%",large: false,callBack: numClick,),
        CustomButton(btnColor: Colors.red,btnTxt: "/",large: false,callBack: numClick,),
],),
Row(children: [
  CustomButton(btnColor: Colors.orange,btnTxt: "7",large: false,callBack: numClick,),
    CustomButton(btnColor: Colors.teal,btnTxt: "8",large: false,callBack: numClick,),
      CustomButton(btnColor: Colors.deepPurpleAccent,btnTxt: "9",large: false,callBack: numClick,),
        CustomButton(btnColor: Colors.blueGrey,btnTxt: "x",large: false,callBack: numClick,),
],),
Row(children: [
  CustomButton(btnColor: Colors.indigo,btnTxt: "4",large: false,callBack: numClick,),
    CustomButton(btnColor: Colors.limeAccent,btnTxt: "5",large: false,callBack: numClick,),
      CustomButton(btnColor: Colors.pinkAccent,btnTxt: "6",large: false,callBack: numClick,),
        CustomButton(btnColor: Colors.purple,btnTxt: "-",large: false,callBack: numClick,),
],),
Row(children: [
  CustomButton(btnColor: Colors.white,btnTxt: "1",large: false,callBack: numClick,),
    CustomButton(btnColor: Colors.teal.withOpacity(0.7),btnTxt: "2",large: false,callBack: numClick,),
      CustomButton(btnColor: Colors.blue.withOpacity(0.6),btnTxt: "3",large: false,callBack: numClick,),
        CustomButton(btnColor: Colors.red,btnTxt: "+",large: false,callBack: numClick,),
],),
Row(children: [
  CustomButton(btnColor: Colors.yellow,btnTxt: "0",large: true,callBack: numClick,),

    CustomButton(btnColor: Colors.yellow,btnTxt: ".",large: false,callBack: numClick,),
      CustomButton(btnColor: Colors.blue,btnTxt: "=",large: false,callBack: numClick,),
  
],),
      ],),
    );
  }
}