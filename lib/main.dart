import 'package:align_ex/align_stack.dart';
import 'package:align_ex/alignment_alignment.dart';
import 'package:align_ex/alignment_enum.dart';
import 'package:align_ex/alignment_fraction_offset.dart';
import 'package:align_ex/no_align.dart';
import 'package:align_ex/no_align_stack.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Align',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              minWidth: 270,
              height: 40,
              child: Text(
                'No Align',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoAlign()),
                );
              },
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
            ),
            MaterialButton(
              minWidth: 270,
              height: 40,
              child: Text(
                'Align with Alignment constants',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AlignmentEnum();
                  }),
                );
              },
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
            ),
            MaterialButton(
              minWidth: 270,
              height: 40,
              child: Text(
                'Align with Alignment',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AlignmentAlignment();
                  }),
                );
              },
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
            ),
            MaterialButton(
              minWidth: 270,
              height: 40,
              child: Text(
                'Align with FractionOffset',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AlignmentFractionOffset();
                  }),
                );
              },
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
            ),
            MaterialButton(
              minWidth: 270,
              height: 40,
              child: Text(
                'No Align within Stack',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return NoAlignStack();
                  }),
                );
              },
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
            ),
            MaterialButton(
              minWidth: 270,
              height: 40,
              child: Text(
                'Align within Stack',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AlignStack();
                  }),
                );
              },
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
