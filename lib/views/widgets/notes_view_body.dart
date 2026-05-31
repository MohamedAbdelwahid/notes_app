import 'package:flutter/material.dart';
import 'package:frist_project/app_localizations.dart';
import 'package:frist_project/views/widgets/custom_app_bar.dart';
import 'package:frist_project/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key, required this.onLocaleToggle});
  final VoidCallback onLocaleToggle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        const SizedBox(height: 60),
        CustomAppBar(
          title: AppLocalizations.of(context).notesTitle,
          icon: Icons.language,
          onIconTap: onLocaleToggle,
        ),
        const SizedBox(height: 16),
        const Expanded(child: NotesListVeiw()),
      ]),
    );
  }
}

