import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';

class ShopFilterButtonsWidget extends StatelessWidget {
  final List<String> filters = [
    'All',
    'Pots & Planters',
    'Garden Supplies',
    'Seeds',
    'fertilizer',
  ];

  ShopFilterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: CustomsBoxDecoration().customFiltersBoxDecoration(context),
      child: BlocBuilder<FilterCubit, int>(
        builder: (context, selectedIndex) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(filters.length, (index) {
                final isSelected = selectedIndex == index;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: InkWell(
                    onTap: () {
                      context.read<FilterCubit>().changeFilter(index);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? context.appColors.teal
                            : context.appColors.offWhite,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: context.appColors.teal,
                          width: 1.2,
                        ),
                      ),
                      child: Text(
                        filters[index],
                        style: isSelected
                            ? AppStyles.textStyle14(
                                context,
                              ).copyWith(color: context.appColors.white)
                            : AppStyles.textStyle14(context),
                      ),
                    ),
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
