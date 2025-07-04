import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/features/home/presentation/view/widgets/home_category_typy_widget.dart';
import 'package:flutter/material.dart';

class TakePicitreCardWidget extends StatelessWidget {
  const TakePicitreCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: context.appColors.offWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Treat your crop and help it recover',
                style: AppStyles.textStyle16Teal(
                  context,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCategoryTypeWidget(
                    image: Appimages.camera1Image,
                    title: 'Take a picture',
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: context.appColors.teal,
                    size: 16,
                  ),
                  HomeCategoryTypeWidget(
                    image: Appimages.camera2Image,
                    title: 'See diagnosis',
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: context.appColors.teal,
                    size: 16,
                  ),
                  HomeCategoryTypeWidget(
                    image: Appimages.camera3Image,
                    title: 'Get medicine',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButon(text: 'Take a picture', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
