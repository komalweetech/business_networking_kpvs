
import 'package:kpvs/Config/Images.dart';

enum BottomNavBarMenuEnum {
  home(
      iconData: AppImages.home,
      selectedIconData: AppImages.selected_home,
      displayName: "Home"),
  meeting(
      iconData: AppImages.meeting,
      selectedIconData: AppImages.selected_meeting,
      displayName: "Meeting"),
  attendences(
      iconData: AppImages.attendences,
      selectedIconData: AppImages.selected_attendences,
      displayName: "Attendances"),
  wings(
      iconData: AppImages.wings,
      selectedIconData: AppImages.selected_wings,
      displayName: "Wings");



  final String displayName;
  final String iconData;
  final String selectedIconData;

  const BottomNavBarMenuEnum(
      {required this.displayName,
        required this.iconData,
        required this.selectedIconData});

}