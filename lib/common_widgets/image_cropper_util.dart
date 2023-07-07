// import 'dart:io';
// import 'package:image_cropper/image_cropper.dart';

// import '../const/const.dart';

// class ImageCropperUtil {
//   static Future<CroppedFile?> cropImage(File imageFile) async {
//     final croppedImage = await ImageCropper.cropImage(
//       sourcePath: imageFile.path,
//       aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
//       compressQuality: 100,
//       maxWidth: 800,
//       maxHeight: 800,
//       compressFormat: ImageCompressFormat.jpg,
//       // androidUiSettings: AndroidUiSettings(
//       //   toolbarTitle: 'Crop Image',
//       //   toolbarColor: Colors.deepOrange,
//       //   toolbarWidgetColor: Colors.white,
//       //   statusBarColor: Colors.deepOrange.shade900,
//       //   activeControlsWidgetColor: Colors.deepOrange.shade900,
//       // ),
//       // iosUiSettings: IOSUiSettings(
//       //   minimumAspectRatio: 1.0,
//       // ),
//     );

//     if (croppedImage != null) {
//       return croppedImage;
//     }
//     return null;
//   }
// }
