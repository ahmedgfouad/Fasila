import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_filter_content_widget.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_filter_buttons_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPlanetViewBody extends StatelessWidget {
  const MyPlanetViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: Column(
        children: [
          MyPlanetFilterButtonsWidget(),
          const SizedBox(height: 15),
          MyPlanetFilterContentWidget(),
        ],
      ),
    );
  }
}
