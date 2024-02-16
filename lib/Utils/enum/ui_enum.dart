
import 'package:kpvs/Config/Images.dart';

enum BottomNavBarMenuEnum {
  home(
      iconData: AppImages.bottombar_home,
      selectedIconData: AppImages.bottombar_selected_home,
      displayName: "Home"),
  meeting(
      iconData: AppImages.bottombar_meeting,
      selectedIconData: AppImages.bottombar_selected_meeting,
      displayName: "Meeting"),
  attendences(
      iconData: AppImages.bottombar_attendences,
      selectedIconData: AppImages.bottombar_selected_attendences,
      displayName: "Attendances"),
  wings(
      iconData: AppImages.bottombar_wings,
      selectedIconData: AppImages.bottombar_selected_wings,
      displayName: "Wings");



  final String displayName;
  final String iconData;
  final String selectedIconData;

  const BottomNavBarMenuEnum(
      {required this.displayName,
        required this.iconData,
        required this.selectedIconData});

}