import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/core/utils/constants.dart';
import 'package:halal/features/azkar/ui/azkar_screen.dart';
import 'package:halal/features/electronic%20seb7a/ui/electronic_seb7a_screen.dart';
import 'package:halal/features/quran/ui/surah_index.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';
import '../../electronic seb7a/logic/cubit.dart';
import '../../settings/ui/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    const SurahIndex(),
    const AzkarScreen(),
    BlocProvider(
       create: (_) => CounterCubit(),
      child: const ElectronicSeb7aScreen()),
  ];
  final List<String> _titles = ['الفهرس', 'الأذكار', "السبحة"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          _titles[Constants.currentIndex],
          style: TextStyles.indexTextStyle,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'الإعدادات',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SettingsScreen();
              }));
            },
            icon: const Icon(
              Icons.settings,
              color: AppColors.kIconColor,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/quran.svg',
                height: 24.h,
                colorFilter: ColorFilter.mode(
                    Constants.currentIndex == 0
                        ? AppColors.kIconColor
                        : Colors.grey,
                    BlendMode.srcIn),
              ),
              label: 'المصحف',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/seb7a.svg',
                height: 24.h,
                colorFilter: ColorFilter.mode(
                    Constants.currentIndex == 1
                        ? AppColors.kIconColor
                        : Colors.grey,
                    BlendMode.srcIn),
              ),
              label: 'الأذكار',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/electronic seb7a.svg',
                height: 24.h,
                colorFilter:
                    const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/electronic seb7a.svg',
                height: 24.h,
              ),
              label: 'سبحة',
            ),
          ],
          currentIndex: Constants.currentIndex,
          selectedItemColor: AppColors.kIconColor,
          unselectedItemColor: Colors.grey,
          onTap: (int index) {
            Constants.currentIndex = index;
            setState(() {});
          }),
      body: _screens[Constants.currentIndex],
    );
  }
}
