import 'package:flutter/material.dart';
import 'package:halal/core/helpers/spacing_extensions.dart';
import 'package:halal/features/quran/ui/widgets/adding_basmla.dart';
import 'package:halal/features/settings/data/settings_constants.dart';

class VersesListView extends StatelessWidget {
  final String fullSurah;
  final int surahId;
  const VersesListView(
      {super.key, required this.fullSurah, required this.surahId});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  surahId + 1 != 1 && surahId + 1 != 9
                      ? Column(
                          children: [
                            const AddingBasmala(),
                            16.ph,
                          ],
                        )
                      : const Text(''),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      fullSurah, //mushaf mode
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SettingsConstants.arabicDefaultFontSize,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(196, 14, 13, 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
