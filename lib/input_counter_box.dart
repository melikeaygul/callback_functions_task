import 'package:flutter/material.dart';

class InputCounterBox extends StatefulWidget {
  final Color backgroundColor;
  final Function(String)? onTextChanged;

  const InputCounterBox({
    super.key,
    this.backgroundColor = Colors.white, // Standardfarbe
    this.onTextChanged,
  });

  @override
  State<InputCounterBox> createState() => _InputCounterBoxState();
}

class _InputCounterBoxState extends State<InputCounterBox> {
  int _length = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  _length = text.length;
                });

                if (widget.onTextChanged != null) {
                  widget.onTextChanged!(text);
                }
              },
              decoration: const InputDecoration(
                hintText: 'Text eingeben',
                border: OutlineInputBorder(),
              ),
            ),
            Text('Länge: $_length'),
          ],
        ),
      ),
    );
  }
}
