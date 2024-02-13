import 'package:get/get.dart';

import '../../../Utils/enum/ui_enum.dart';

class DashboardController extends GetxController {
  Rx<BottomNavBarMenuEnum> selectedBottomNavBarButton =
      BottomNavBarMenuEnum.home.obs;
}