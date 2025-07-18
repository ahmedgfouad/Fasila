import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/product_details/presentation/manager/quantity_cubit/quantity_cubit.dart';
import 'package:fasila/features/product_details/presentation/view/widget/togel_quantity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuantitySnakbarWidget {
  static void show({required BuildContext context}) {
    final quantityCubit = context.read<QuantityCubit>(); 
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width / 7,
        ),
        duration: const Duration(days: 1),
        backgroundColor: context.appColors.offWhite,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        behavior: SnackBarBehavior.floating,
        content: BlocProvider.value(
          value: quantityCubit,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose The Quantity',
                style: AppStyles.textStyle18(context).copyWith(
                  color: context.appColors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TogelQuantityProductWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
