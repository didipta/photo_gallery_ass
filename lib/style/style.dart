
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle TextSize(context){
  var width=MediaQuery.of(context).size.width;

  if(width<650){
   return TextStyle(

     color:Colors.white,
     fontSize: 20,
     fontWeight: FontWeight.w700,


   );
  }else{
    return TextStyle(
        color:Colors.white,
        fontSize: 21,
        fontWeight: FontWeight.w700
    );
  }
}