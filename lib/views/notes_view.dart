
import 'package:flutter/material.dart';
import 'package:frist_project/views/widgets/add_note_bottom_sheet.dart';
import 'package:frist_project/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key, required this.onLocaleToggle});
  final VoidCallback onLocaleToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (builder) {
              return const AddNoteBottomsheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewBody(onLocaleToggle: onLocaleToggle),
    );
  }
}
