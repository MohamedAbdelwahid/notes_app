import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frist_project/app_localizations.dart';
import 'package:frist_project/constant.dart';
import 'package:frist_project/models/note_model.dart';
import 'package:frist_project/views/notes_view.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotesBox);
  runApp(const Notesapp());
}

class Notesapp extends StatefulWidget {
  const Notesapp({super.key});

  @override
  State<Notesapp> createState() => _NotesappState();
}

class _NotesappState extends State<Notesapp> {
  Locale _locale = const Locale('ar');

  void _toggleLocale() {
    setState(() {
      _locale = _locale.languageCode == 'ar' ? const Locale('en') : const Locale('ar');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: _locale,
      home: NotesView(onLocaleToggle: _toggleLocale),
    );
  }
}
