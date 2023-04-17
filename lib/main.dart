import 'dart:io';

import 'package:cod_assistant/GenderSelection.dart';
import 'package:cod_assistant/MaleSelection/MaleSelectionScreen.dart';
import 'package:cod_assistant/SymptomAddDrop/SymptomResultScreen.dart';
import 'package:cod_assistant/Welcome/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive/hive.dart';

import 'FemaleSelection/FemaleSelectionScreen.dart';
import 'Help/HelpScreen.dart';
import 'Profile/ProfileScreen.dart';
import 'Symptom/Symptoms.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

void main() async {
  Hive.init('${Directory.systemTemp.path}/codassistant');
  await Hive.openBox('profile');
  runApp(const CODAssistant());
}

class CODAssistant extends StatelessWidget {
  const CODAssistant({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/help': (context) => const HelpScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/gender': (context) => const GenderSelection(),
        '/male': (context) => const MaleSelectionScreen(),
        '/female': (context) => const FemaleSelectionScreen(),
        '/result': (context) => const SymptomResultScreen(),
        '/arm': (context) => Symptoms.hand.getWidget(context),
        '/skin': (context) => Symptoms.skin.getWidget(context),
      },
      title: "CODAssistant",
      theme: ThemeData(
        backgroundColor: const Color(0xff62fdff),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (
        locale,
        supportedLocales,
      ) {
        return locale;
      },
    );
  }
}
