import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit.dart';

class DecreamentCounterButton extends StatelessWidget {
  const DecreamentCounterButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => context.read<CounterCubit>().decrement(),
        child: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 0, 251),
        ));
  }
}
