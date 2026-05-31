import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:frist_project/app_localizations.dart';
import 'package:frist_project/constant.dart';
import 'package:frist_project/models/note_model.dart';
import 'package:frist_project/views/widgets/custom_note_item.dart';

class NotesListVeiw extends StatelessWidget {
  const NotesListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<NoteModel>(knotesBox);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ValueListenableBuilder<Box<NoteModel>>(
        valueListenable: box.listenable(),
        builder: (context, notes, _) {
          if (notes.isEmpty) {
            return Center(
              child: Text(
                AppLocalizations.of(context).noNotes,
                style: const TextStyle(color: Colors.white70, fontSize: 18),
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              final note = notes.getAt(index);
              if (note == null) return const SizedBox.shrink();
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(note: note),
              );
            },
          );
        },
      ),
    );
  }
}
