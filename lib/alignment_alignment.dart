import 'package:flutter/material.dart';

class AlignmentAlignment extends StatefulWidget {
  @override
  _AlignmentAlignmentState createState() => _AlignmentAlignmentState();
}

class _AlignmentAlignmentState extends State<AlignmentAlignment> {
  final TextEditingController xController = TextEditingController();
  final TextEditingController yController = TextEditingController();

  double x = -1.0;
  double y = -1.0;

  @override
  void dispose() {
    xController.dispose();
    yController.dispose();
    super.dispose();
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  void moveToNewPosition() {
    String xPos = xController.text;
    String yPos = yController.text;

    if (!isNumeric(xPos) || !isNumeric(yPos)) {
      return;
    }

    x = double.parse(xPos);
    y = double.parse(yPos);

    if (x >= -1.0 && x <= 1.0 && y >= -1.0 && y <= 1.0) {
      setState(() {});
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Range Error'),
            content: Text('Your input: ($x, $y), -1 <= x, y <= +1'),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alignment with Alignment'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Align(
                  alignment: Alignment(x, y),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.indigo,
                    alignment: Alignment.center,
                    child: Text(
                      '($x, $y)',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: TextField(
                    controller: xController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[400],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: TextField(
                    controller: yController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[400],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: MaterialButton(
                    minWidth: 150,
                    height: 40,
                    child: Text(
                      'Next Alignment',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      moveToNewPosition();
                    },
                    color: Colors.deepPurpleAccent,
                    textColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
