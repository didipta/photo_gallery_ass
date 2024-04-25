import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery_ass/Component/PhotoDetails.dart';
import 'package:photo_gallery_ass/Fakedata/data.dart';
import 'package:photo_gallery_ass/style/style.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class PhotoList extends StatelessWidget {
  final List<Map<String, dynamic>> fakedata;
  PhotoList({Key? key, required this.fakedata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ResponsiveGridList(
      horizontalGridMargin: 30,
      verticalGridMargin: 30,
      minItemWidth: 180,
      horizontalGridSpacing: 30,
      verticalGridSpacing: 30,
      children: fakedata.map((item) {
        return GestureDetector(

          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>PhotoDetails(name:item["name"])));
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              height: 180,  // Set the height of the container
              width: double.infinity,  // Set the width to take up all available space
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),  // Adds rounded corners to the container
                boxShadow: [
                  BoxShadow(
                  color: Color(0x80000000),
                 blurRadius: 30.0,
                offset: Offset(0, 15),
               )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.85,  // Set the opacity value here
                      child: Image.network(
                        item["img"],
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: 133,


                        padding: EdgeInsets.only(left: 20,bottom: 15,top: 10),  // Padding inside the text container
                          // Semi-transparent black background for the text
                        child: Text(
                          item["name"],  // The text you want to show
                          style: TextSize(context),
                          textAlign: TextAlign.start,
                          maxLines: 1,

                          // Center align text
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );



      }).toList(),
    );
  }
}
