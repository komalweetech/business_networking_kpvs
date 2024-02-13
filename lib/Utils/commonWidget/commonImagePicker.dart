import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

abstract class CommonImagePicker {
  // PIC AND GET IMAGE PATH
  static Future<String?> picImageAndGetFilePath() async {
    var file = await ImagePicker().pickImage(
      imageQuality: 50,
      source: ImageSource.gallery,
    );
    await file?.readAsBytes();
    return file?.path;
  }

  static Future<CroppedFile?> cropImage(
      filepath,
      ) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: filepath,
        aspectRatioPresets: Platform.isAndroid
            ? [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ]
            : [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio5x3,
          CropAspectRatioPreset.ratio5x4,
          CropAspectRatioPreset.ratio7x5,
          CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Cropper',
            showCropGrid: true,
            toolbarWidgetColor: Colors.black,
            cropGridColor: Colors.white,
            cropFrameColor: Colors.white,
            dimmedLayerColor: Colors.black26,
            cropGridStrokeWidth: 2,
            cropFrameStrokeWidth: 2,
            backgroundColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          IOSUiSettings(
            title: 'Cropper',
            showCancelConfirmationDialog: true,
          )
        ]);
    return croppedFile;
  }
}
