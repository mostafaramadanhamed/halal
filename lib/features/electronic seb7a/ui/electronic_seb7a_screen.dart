import 'package:flutter/material.dart';
import 'package:halal/features/electronic%20seb7a/ui/widgets/seb7a_counter_meduim_shape.dart';
import 'package:halal/features/electronic%20seb7a/ui/widgets/seb7a_decreament_reset_shape.dart';
import 'package:halal/features/electronic%20seb7a/ui/widgets/seb7a_icereament_shape.dart';
import 'package:halal/features/electronic%20seb7a/ui/widgets/seb7a_top_shape.dart';

class ElectronicSeb7aScreen extends StatelessWidget {
  const ElectronicSeb7aScreen({super.key});




  @override
  Widget build(BuildContext context) {
    return  const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Seb7aTopShape(),
        Seb7aCounterMeduimShape(),
        Seb7aDecreamentResetShape(),
        Seb7aIcereamentShape(),
      ],
    );
  }
}
