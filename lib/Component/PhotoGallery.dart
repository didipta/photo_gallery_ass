import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery_ass/Component/PhotoList.dart';
import 'package:photo_gallery_ass/Fakedata/data.dart';
import 'package:photo_gallery_ass/style/style.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(122, 202, 94,1), // Background color for the icon
            borderRadius: BorderRadius.circular(10.5), // Makes the background circular
          ),
          padding:EdgeInsets.only(left: 3),
          margin: EdgeInsets.all(10), // Optional: adds margin around the icon
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text("Photo Gallery", style: TextSize(context),),
        backgroundColor: Colors.green,
        titleSpacing: 100,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 1,
        centerTitle:true ,


        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.more_vert,color:Colors.white ))
        ],

      ),
      body: PhotoList(fakedata: fakedata,),
    );
  }
}
