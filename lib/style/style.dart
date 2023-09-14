

import 'package:flutter/material.dart';

const colorGreen=Colors.green;
const colorGrey=Color.fromRGBO(128,128,128,1);
const colorWhite=Colors.white;


InputDecoration AppInputDecoration(label){
  return InputDecoration(

    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.symmetric(horizontal: 15),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color:colorGreen),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder:  OutlineInputBorder(
      borderSide: BorderSide(color:colorGreen),

    ),
    labelText:label,
  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(

    backgroundColor: Colors.transparent,
    padding: EdgeInsets.all(10),
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );
}

Ink SuccessButtonStyle(childbutton){
  return Ink(
    decoration:BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(10),

    ),
    child:Container(
      height: 50,
      alignment: Alignment.center,
      child: Text(childbutton,style: TextStyle(fontSize: 20),),
    ),
  );
}

DecoratedBox Dropdownbutton(child){
  return DecoratedBox(decoration: BoxDecoration(
      color: Colors.green,
       borderRadius: BorderRadius.circular(10),
      // border: Border.all(color: Colors.green,width: 1)
  ),
    child: child,
  );
}

DecoratedBox Dropdownboarder(child){
  return DecoratedBox(decoration: BoxDecoration(
    color: Colors.green,

     border: Border.all(color: Colors.green,width: 1)
  ),
    child: child,
  );
}