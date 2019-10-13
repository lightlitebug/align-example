import 'package:flutter/material.dart';

class AlignmentEnum extends StatefulWidget {
  @override
  _AlignmentEnumState createState() => _AlignmentEnumState();
}

class _AlignmentEnumState extends State<AlignmentEnum> {
  final List<Alignment> alignments = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight
  ];
  Alignment alignment = Alignment.topLeft;
  int currentIndex = 0;

  String currentAlignment() {
    if (alignment == Alignment.topLeft) return 'topLeft';
    if (alignment == Alignment.topCenter) return 'topCenter';
    if (alignment == Alignment.topRight) return 'topRight';
    if (alignment == Alignment.centerLeft) return 'centerLeft';
    if (alignment == Alignment.center) return 'center';
    if (alignment == Alignment.centerRight) return 'centerRight';
    if (alignment == Alignment.bottomLeft) return 'bottomLeft';
    if (alignment == Alignment.bottomCenter) return 'bottomCenter';
    if (alignment == Alignment.bottomRight) return 'bottomRight';
    return null;
  }

  void nextAlignment() {
    currentIndex = (currentIndex + 1) % alignments.length;

    setState(() {
      alignment = alignments[currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alignment Enum'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Align(
                  alignment: alignment,
                  child: Text(
                    currentAlignment(),
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  currentAlignment(),
                  style: TextStyle(fontSize: 18),
                ),
                MaterialButton(
                  minWidth: 250,
                  height: 40,
                  child: Text(
                    'Next Alignment',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: nextAlignment,
                  color: Colors.deepPurpleAccent,
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
