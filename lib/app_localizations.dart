import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];

  static final Map<String, Map<String, String>> _localizedStrings = {
    'notesTitle': {
      'en': 'Notes',
      'ar': 'الملاحظات',
    },
    'editNoteTitle': {
      'en': 'Edit Note',
      'ar': 'تعديل الملاحظة',
    },
    'add': {
      'en': 'Add',
      'ar': 'اضافة',
    },
    'save': {
      'en': 'Save',
      'ar': 'حفظ',
    },
    'titleHint': {
      'en': 'title',
      'ar': 'العنوان',
    },
    'contentHint': {
      'en': 'content',
      'ar': 'المحتوى',
    },
    'noNotes': {
      'en': 'No notes yet. Tap + to add one.',
      'ar': 'لا توجد ملاحظات بعد. اضغط + لإضافة واحدة.',
    },
  };

  String get notesTitle => _translate('notesTitle');
  String get editNoteTitle => _translate('editNoteTitle');
  String get add => _translate('add');
  String get save => _translate('save');
  String get titleHint => _translate('titleHint');
  String get contentHint => _translate('contentHint');
  String get noNotes => _translate('noNotes');

  String _translate(String key) {
    return _localizedStrings[key]?[locale.languageCode] ?? _localizedStrings[key]!['en']!;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return Future.value(AppLocalizations(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
