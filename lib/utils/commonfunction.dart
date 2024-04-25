import 'package:photo_gallery_ass/Fakedata/data.dart';

Map<String, dynamic>? getPhotoDetails(String name) {
  return fakedata.firstWhere(
        (photo) => photo['name'] == name,

  );
}