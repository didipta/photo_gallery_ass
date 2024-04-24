import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle TextSize(context,size,size2){
  var width=MediaQuery.of(context).size.width;

  if(width<650){
   return TextStyle(

     color:Colors.white,
     fontSize: size,
     fontWeight: FontWeight.w700,


   );
  }else{
    return TextStyle(
        color:Colors.white,
        fontSize: size2,
        fontWeight: FontWeight.w700
    );
  }
}