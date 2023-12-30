import 'package:flutter/material.dart';
import 'package:todo_app/TodoViewModel.dart';
import 'package:provider/provider.dart';
import 'TodoListPage.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => TodoViewModel(),
        child: TodoListPage(),
      ),
    );
  }
}
