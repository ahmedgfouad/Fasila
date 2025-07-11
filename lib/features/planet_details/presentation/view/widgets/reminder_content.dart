import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_show_dialog.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/switch_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReminderContent extends StatelessWidget {
  const ReminderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButtonWidget(
          text: "Add Alarm",
          onPressed: () {
            alarmShowDialog(context);
          },
          icon: Icon(Icons.alarm, color: context.appColors.white),
        ),
        SwitchCardWidget(
          title: "Water",
          discribtion: "08:30 am sat, mon, wed",
          icon: SvgPicture.network(AppImages.waterImage),
          initialValue: true,
          onEditPressed: () {},
        ),
        SwitchCardWidget(
          title: "Fiertilize",
          discribtion: "08:30 am son",
          icon: SvgPicture.network(AppImages.fertilizerImage),
          initialValue: true,
          onEditPressed: () {},
        ),
        SwitchCardWidget(
          title: "Care",
          discribtion: "08:30 am sat, mon, wed",
          icon: SvgPicture.network(AppImages.careImage),
          initialValue: true,
          onEditPressed: () {},
        ),
      ],
    );
  }

  
}
