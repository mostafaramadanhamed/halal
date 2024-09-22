import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';
import 'package:halal/core/utils/constants.dart';
import 'package:halal/features/quran/ui/surah_index.dart';
import 'package:halal/features/settings/ui/settings_screen.dart';

import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    const SurahIndex(),
    const Text('Quran'),
    const SettingsScreen(),
  ];
  final List<String> _titles = ['الفهرس', 'الأذكار', "الاعدادات"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          _titles[Constants.currentIndex],
          style: TextStyles.indexTextStyle,
        ),
        backgroundColor: AppColors.kAppbarColor,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/quran.svg',
                height: 24.h,
                colorFilter: ColorFilter.mode(
                    Constants.currentIndex == 0 ? AppColors.kIconColor : Colors.grey,
                    BlendMode.srcIn),
              ),
              label: 'المصحف',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/seb7a.svg',
                height: 24.h,
                colorFilter: ColorFilter.mode(
                    Constants.currentIndex == 1 ? AppColors.kIconColor : Colors.grey,
                    BlendMode.srcIn),
              ),
              label: 'الأذكار',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'الاعدادات',
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
