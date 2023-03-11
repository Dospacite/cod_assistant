import 'package:cod_assistant/GenderSelection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const CODAssistant());
}

class CODAssistant extends StatelessWidget {
  const CODAssistant({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GenderSelection(),
      title: "CODAssistant",
      theme: ThemeData(
        primarySwatch: Colors.teal,
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
