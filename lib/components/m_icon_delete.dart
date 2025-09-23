import 'package:flutter/material.dart';

class MIconDelete extends StatelessWidget {
  final VoidCallback? deleteItemAsync;
  const MIconDelete({super.key, required this.deleteItemAsync});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete_forever_rounded, color: Colors.red[600]),
      onPressed: deleteItemAsync,
    );
  }
}
