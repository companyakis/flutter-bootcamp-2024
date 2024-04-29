//multilang.dart file

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MultiLangApp extends StatelessWidget {
  const MultiLangApp({super.key});

  @override
  Widget build(BuildContext context) {
    var mulLang = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(mulLang!.appTitle)),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(mulLang.aProverb),
        ]),
      ),
    );
  }
}
