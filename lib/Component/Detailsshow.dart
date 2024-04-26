import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery_ass/Component/PhotoList.dart';

List<Widget> DetailsShow(Map<String, dynamic>? item,width,List<Map<String, dynamic>>? suggestions)
 {
   return [
     Container(
       width: width < 650 ? double.infinity : 390,

         // Set the width to take up all available space
       decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
             color: Color(0x50000000), // #00000080 in CSS
             offset: Offset(5.0, 5.0), // x, y offset in CSS
             blurRadius: 50.0, // blur radius
             spreadRadius: 0.0, // spread radius
           ),
         ],
         borderRadius: BorderRadius.circular(30.0), // Set the border radius of the container
       ),
       padding: EdgeInsets.all(15),
       margin: EdgeInsets.all(0),
       height: 325,
       child: ClipRRect(
         borderRadius: BorderRadius.circular(30.0), // Apply border radius to image
         child: Image.network(
           item!['img'],
           fit: BoxFit.cover, // Ensure the image covers the clip area
         ),
       ),
     ),

     width <650 ? Textcontiner(item!['name'],item!['des'],width,suggestions):
     Expanded(
       child:Textcontiner(item!['name'],item!['des'],width,suggestions)
     ),

   ];
 }





 Textcontiner(name,des,width,suggestions){
  return Container(
  padding: EdgeInsets.all(25),
 child: Column(

 crossAxisAlignment:CrossAxisAlignment.start,
 mainAxisAlignment:MainAxisAlignment.start,
 children: [
 Text(
 name,
 style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
 ),
 SizedBox(height: 15,),
 Container(
 child: Text(des,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
 ),
   SizedBox(height: 20,),


   SizedBox(
     width: width < 650 ? width : width*0.5 ,
     child: ElevatedButton(
       onPressed: () {
         // Add your button press logic here
       },
       child: Text("See More",style: TextStyle(
           color: Colors.white,
           fontSize: 20,
           fontWeight: FontWeight.w400
       )),
       style: ElevatedButton.styleFrom(
         primary: Color.fromRGBO(44, 171, 0, 1), // Background color
         onPrimary: Colors.white, // Text color (Foreground color)
         elevation:10 , // Shadow elevation
         shape: RoundedRectangleBorder( // Rounded corners
           borderRadius: BorderRadius.circular(30.0),
         ),
         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Button padding
       ),
     ),
   ),
   SizedBox(height: 20,),
   SizedBox(height: 5,),
   Text("suggestions",style: TextStyle(
       color: Color.fromRGBO(44, 171, 0, 1),
       fontSize: 20,
       fontWeight: FontWeight.w400
   ),),
   SizedBox(height: 20,),
   AspectRatio(
     aspectRatio:4/4 ,
       child: PhotoList(fakedata: suggestions))


 ],
 ),
 );
 }