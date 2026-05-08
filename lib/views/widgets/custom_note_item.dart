
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24 , left: 16 ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Tips',
            style: TextStyle(
              color: Colors.black, 
              fontSize: 26),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16),
              child: Text('Build your career with mohamed abdelwahid',
              style: TextStyle(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(.6), 
                fontSize: 20),),
            ),
            trailing: IconButton(
              onPressed: (){},
               icon: const Icon(
               Icons.delete, 
               color: Colors.black,
               size: 40,
            ),),
          ),    
         Padding(
           padding: const EdgeInsets.only(right: 8),
           child: Text('May 6 , 2026', style: TextStyle(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(.4),
           ),),
         )
        ],
      ),
    );
  }
}