import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit.dart';

class ResetCounterButton extends StatelessWidget {
  const ResetCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => context.read<CounterCubit>().reset(),
        child: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 99, 0, 87),
        ));
  }
}
