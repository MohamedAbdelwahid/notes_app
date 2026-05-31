import 'package:flutter/material.dart';
import 'package:frist_project/app_localizations.dart';
import 'package:frist_project/models/note_model.dart';
import 'package:frist_project/views/widgets/custom_app_bar.dart';
import 'package:frist_project/views/widgets/custom_bottom.dart';
import 'package:frist_project/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subTitle;

  void updateNote() {
    if (formkey.currentState?.validate() ?? false) {
      formkey.currentState?.save();
      widget.note.title = title ?? widget.note.title;
      widget.note.subTitle = subTitle ?? widget.note.subTitle;
      widget.note.date = '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}';
      widget.note.save();
      Navigator.of(context).pop();
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(height: 60),
            CustomAppBar(
              title: AppLocalizations.of(context).editNoteTitle,
            ),
            const SizedBox(height: 60),
            CustomTextField(
              (value) => title = value,
              hint: AppLocalizations.of(context).titleHint,
              initialValue: widget.note.title,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              (value) => subTitle = value,
              hint: AppLocalizations.of(context).contentHint,
              maxLines: 5,
              initialValue: widget.note.subTitle,
            ),
            const SizedBox(height: 32),
            CustomButtom(
              title: AppLocalizations.of(context).save,
              onTap: updateNote,
            ),
          ],
        ),
      ),
    );
  }
}