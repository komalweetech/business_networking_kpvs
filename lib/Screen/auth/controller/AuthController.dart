import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // LOGIN FORM DATA
  TextEditingController phoneNumberController = TextEditingController();

  late Timer timerInstance;
  RxInt duration = 30.obs;
  RxBool isLoading = false.obs;

  void startTimer() {
    duration.value = 30;
    const oneSec = Duration(seconds: 1);
    timerInstance = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (duration.value == 0) {
          // setState(() {
          timer.cancel();
          isLoading.value = false;
          isLoading.refresh();
          // });
        } else {
          // setState(() {
          duration.value--;
          // });
        }
      },
    );
  }

}
