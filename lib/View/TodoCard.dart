import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/TodoViewModel.dart';
import '../DataModel/Todo.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  const TodoCard({required this.todo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TodoViewModel>(context);

    return Card(
      child: ListTile(
        title: Text(todo.name),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            viewModel.delete(todo);
          },
        ),
      ),
    );
  }
}
