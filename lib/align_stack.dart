import 'package:flutter/material.dart';

class AlignStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align within Stack'),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.yellow,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
