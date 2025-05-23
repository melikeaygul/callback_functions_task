import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            InputCounterBox(
              backgroundColor: Colors.blue[100]!,
              onTextChanged: (text) {
                print('Benutzer hat folgenden Text eingegeben: $text');
              },
            ),
            InputCounterBox(
              backgroundColor: Colors.red[100]!,
              onTextChanged: (text) {
                print('Benutzer hat folgenden Text eingegeben: $text');
              },
            ),
            InputCounterBox(
              backgroundColor: Colors.green[100]!,
              onTextChanged: (text) {
                print('Benutzer hat folgenden Text eingegeben: $text');
              },
            ),
          ],
        ),
      ),
    );
  }
}
