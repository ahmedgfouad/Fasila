import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfMyPlanetItemsWidget extends StatelessWidget {
  const ListOfMyPlanetItemsWidget({super.key, this.category});
  final String? category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          final item = myPlanetData[category]![index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: MyPlanetItemWidget(myPlanetModel: item),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: myPlanetData[category]!.length,
      ),
    );
  }
}
