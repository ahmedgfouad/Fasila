import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectLocationCardWidget extends StatelessWidget {
  const SelectLocationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSelectLocationView);
      },
      child: Card(
        color: context.appColors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.location_on_outlined, color: context.appColors.teal),
              const SizedBox(width: 10),
              Text(
                "Select the location on the map",
                style: AppStyles.textStyle14(context).copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.appColors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
