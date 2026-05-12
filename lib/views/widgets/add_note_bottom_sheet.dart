
import 'package:flutter/material.dart';
import 'package:frist_project/views/widgets/custom_bottom.dart';
import 'package:frist_project/views/widgets/custom_text_field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
                        SizedBox(
              height: 32,
            ),
            CustomButtom(),
                        SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

