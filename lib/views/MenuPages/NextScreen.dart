import 'package:flutter/material.dart';
class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: const Center(
          child: Text('New Page'),
        ));
  }
}
