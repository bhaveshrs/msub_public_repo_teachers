import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.e});
  final Exception? e;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('The page that you\'re looking for does not exist'),
      ),
    );
  }
}
