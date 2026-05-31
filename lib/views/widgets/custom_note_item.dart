import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:frist_project/models/note_model.dart';
import 'package:frist_project/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(note: note);
        }));
      },
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color.fromARGB(
          242,
          (Color(note.color).r * 255.0).round().clamp(0, 255),
          (Color(note.color).g * 255.0).round().clamp(0, 255),
          (Color(note.color).b * 255.0).round().clamp(0, 255),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      note.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Share.share('${note.title}\n\n${note.subTitle}\n\n${note.date}');
                        },
                        icon: const Icon(Icons.share, color: Colors.black87, size: 26),
                      ),
                      const SizedBox(height: 8),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          note.delete();
                        },
                        icon: const Icon(Icons.delete, color: Colors.black87, size: 28),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                note.subTitle,
                style: const TextStyle(
                  color: Color(0xBF000000),
                  fontSize: 18,
                  height: 1.4,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0x14000000),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      note.date,
                      style: const TextStyle(
                        color: Color(0x8C000000),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
