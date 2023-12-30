import 'package:flutter/material.dart';

class Todo {
  final String name;
  final bool isImportant;

  const Todo({required this.name, this.isImportant = false});

  MaterialColor importantColor() {
    return isImportant ? Colors.yellow : Colors.grey;
  }
}