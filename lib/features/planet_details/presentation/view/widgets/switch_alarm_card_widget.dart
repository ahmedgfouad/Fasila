import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/manager/switch_cubit/switch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchAlarmCardWidget extends StatelessWidget {
  final bool initialValue;
  final String discribtion;

  const SwitchAlarmCardWidget({
    super.key,
    required this.discribtion,
    this.initialValue = true,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchCardCubit(initial: initialValue),
      child: BlocBuilder<SwitchCardCubit, bool>(
        builder: (context, isOn) {
          final cubit = context.read<SwitchCardCubit>();
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 0),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  discribtion,
                  style: AppStyles.textStyle12Grey(
                    context,
                  ).copyWith(color: context.appColors.teal),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: Switch(
                    value: isOn,
                    onChanged: cubit.set,
                    activeColor: context.appColors.offWhite,
                    activeTrackColor: context.appColors.teal,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
