import 'package:flutter/material.dart';

class NoAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Align'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[200],
        child: Text(
          'Where Am I?',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
