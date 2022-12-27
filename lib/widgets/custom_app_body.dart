import 'package:flutter/material.dart';

class CustomAppBody extends StatelessWidget {
  const CustomAppBody({super.key, required this.widget, this.floatingActionButton});
  final Widget widget;
  final FloatingActionButton? floatingActionButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 56,
          right: 20,
          left: 20,
          bottom: 8,
        ),
        child: widget
      ),
    );
  }
}