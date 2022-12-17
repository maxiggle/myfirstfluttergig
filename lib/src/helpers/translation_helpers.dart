import 'package:flutter/materiaL.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum L {
  appTitle,
  hello,
  tasks,
  content,
  messages,
}

String t(BuildContext context, L key) {
  Map<L, String> langMap = {
    L.appTitle: AppLocalizations.of(context)!.appTitle,
    L.hello: AppLocalizations.of(context)!.hello,
    L.tasks: AppLocalizations.of(context)!.tasks,
    L.content: AppLocalizations.of(context)!.content,
    L.messages: AppLocalizations.of(context)!.messages,
  };

  return langMap[key] ?? '---missing translations---';
}
