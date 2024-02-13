

import 'package:kpvs/Config/Images.dart';

enum BottomNavBarMenuEnum {
  addBusiness(
      iconLink: AppImages.add_Business,
      selectedIconLink: AppImages.select_add_business,
      displayName: "Home"),
  attendences(
      iconLink: AppImages.attendences,
      selectedIconLink: AppImages.selected_attendences,
      displayName: "Pretest"),
  settings(
      iconLink: AppImages.settings,
      selectedIconLink: AppImages.selected_settings,
      displayName: "Favorite"),
  meeting(
      iconLink: AppImages.meeting,
      selectedIconLink: AppImages.selected_meeting,
      displayName: "Offers"),
  home(
      iconLink: AppImages.home,
      selectedIconLink: AppImages.selected_home,
      displayName: "Offers");


  final String displayName;
  final String iconLink;
  final String selectedIconLink;

  const BottomNavBarMenuEnum(
      {required this.displayName,
        required this.iconLink,
        required this.selectedIconLink});
}