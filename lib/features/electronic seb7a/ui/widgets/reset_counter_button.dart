import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal/core/theme/colors.dart';

import '../../logic/cubit.dart';

class ResetCounterButton extends StatelessWidget {
  const ResetCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => context.read<CounterCubit>().reset(),
        child: const CircleAvatar(
          backgroundColor: AppColors.kPrimaryColor,
        ));
  }
}
