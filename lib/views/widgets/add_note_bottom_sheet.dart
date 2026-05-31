import 'package:flutter/material.dart';
import 'package:frist_project/app_localizations.dart';
import 'package:frist_project/constant.dart';
import 'package:frist_project/models/note_model.dart';
import 'package:frist_project/views/widgets/custom_bottom.dart';
import 'package:frist_project/views/widgets/custom_text_field.dart';
import 'package:hive/hive.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        16,
        16,
        16,
        MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  void addNote() {
    if (formkey.currentState?.validate() ?? false) {
      formkey.currentState?.save();
      final note = NoteModel(
        title: title ?? '',
        subTitle: subTitle ?? '',
        date: '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
        color: 0xffffcc80,
      );
      Hive.box<NoteModel>(knotesBox).add(note);
      Navigator.of(context).pop();
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            (value) => title = value,
            hint: AppLocalizations.of(context).titleHint,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            (value) => subTitle = value,
            hint: AppLocalizations.of(context).contentHint,
            maxLines: 5,
          ),
          const SizedBox(height: 32),
          CustomButtom(
            title: AppLocalizations.of(context).add,
            onTap: addNote,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
