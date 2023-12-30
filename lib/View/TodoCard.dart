import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/TodoViewModel.dart';
import '../DataModel/Todo.dart';

class TodoCard extends StatelessWidget {
  final int index;
  const TodoCard({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TodoViewModel>(context);
    final todo = viewModel.todos[index];

    return Card(
      child: ListTile(
        title: Text(todo.name),
        leading: IconButton(
          icon: const Icon(Icons.star),
          color: todo.importantColor(),
          onPressed: () {
            viewModel.switchImportant(index);
          },
        ),
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
