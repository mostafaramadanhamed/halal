import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit.dart';

class IncreamentCounterButton extends StatelessWidget {
  const IncreamentCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<CounterCubit>().increment(),
      child: CircleAvatar(
        radius: 40.r,
        backgroundColor: const Color.fromARGB(255, 97, 0, 105),
      ),
    );
  }
}
