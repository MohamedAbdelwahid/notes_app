import 'package:flutter/material.dart';
import 'package:frist_project/widgets/custom_button.dart';
import 'package:frist_project/widgets/custom_text_field.dart';

class ResgisterPage extends StatelessWidget {
  const ResgisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset('assets/images/scholar.png'),
            Text(
              'ScholarChat',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            Spacer(flex: 2),
            Row(
              children: [
                Text(
                  'Resgister',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 15),
            CustomTextField(hintext: 'Email'),
            SizedBox(height: 15),
            CustomTextField(hintext: 'Resgister'),
            SizedBox(height: 10),
            CustomButton(text: 'LOGIN'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '  login',
                    style: TextStyle(color: Color(0xffC7EDE6)),
                  ),
                ),
              ],
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
