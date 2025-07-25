import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:flutter/material.dart';

class ImagePlanetDetailsWidget extends StatelessWidget {
  const ImagePlanetDetailsWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration:CustomsBoxDecoration(). defaultBoxDecoration(context),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: planetModel.imageUrl,
              // fit: BoxFit.cover,
            ),
          ),
        ),
        // ShareAndFavoriteWidget(),
        Positioned(
          left: 10,
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: context.appColors.teal, width: 1),
            ),
            child: Text(
              planetModel.name,
              style: AppStyles.textStyle14(context).copyWith(
                color: context.appColors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
