import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';

import '../../../Utils/commonWidget/commonImagePicker.dart';

class ProfileController extends GetxController {

  RxString selectedProfilePickLink = ''.obs;

  // IMAGE PICKER METHOD from gallery
  Future<void> picProfileImage() async {
    // PIC FILE AND GET FILE PATH
    String? pickedImagePath = await CommonImagePicker.picImageAndGetFilePath();
    // CROPPED IMAGE
    if (pickedImagePath != null) {
      CroppedFile? croppedImage =
      await CommonImagePicker.cropImage(pickedImagePath);
      selectedProfilePickLink.value = croppedImage?.path ?? '';
    }
  }
}