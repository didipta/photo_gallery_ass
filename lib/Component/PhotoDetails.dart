import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery_ass/style/style.dart';

class PhotoDetails extends StatefulWidget {
  final String name;
   PhotoDetails({Key? key, required this.name}) : super(key: key);

  @override
  State<PhotoDetails> createState() => _PhotoDetailsState();
}

class _PhotoDetailsState extends State<PhotoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 40,
          height: 40,
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
        title: Text(widget.name, style: TextSize(context,20,25),),
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
    );
  }
}
