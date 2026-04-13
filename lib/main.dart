import 'package:flutter/material.dart';
import 'package:frist_project/screen/resgister_page.dart';
import 'package:frist_project/screen/screen.dart';

void main() {
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Screen' : (context) => Screen(),
        'ResgisterPage' : (context) => ResgisterPage (),
      },
     initialRoute: 'Screen',
     );
  }
}
