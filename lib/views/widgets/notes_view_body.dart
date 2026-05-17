import 'package:flutter/material.dart';
import 'package:frist_project/views/widgets/custom_app_bar.dart';
import 'package:frist_project/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const [SizedBox(height: 60),
       CustomAppBar(        
         title: 'Edit Note',
           icon: Icons.check ,),
       Expanded(
        child: NotesListVeiw()
        ),
       ]),
    );
  }
}

