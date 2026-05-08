import 'package:flutter/material.dart';
import 'package:frist_project/views/notes_view.dart';

void main() {
  runApp(const Notesapp());
}
// ignore: camel_case_types
class Notesapp extends StatelessWidget {
  const Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'
      ),
      home:const NotesView(),
    );
  }
}