import 'package:photo_gallery_ass/Fakedata/data.dart';

Map<String, dynamic>? getPhotoDetails(String name) {
  return fakedata.firstWhere(
        (photo) => photo['name'] == name,

  );
}

List<Map<String, dynamic>> filterphoto(String name){
  return fakedata.where((element) => element['name']!=name).toList();
}