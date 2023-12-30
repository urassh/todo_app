import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/DataModel/Todo.dart';
import 'package:todo_app/TodoViewModel.dart';
import 'TodoAddPage.dart';
import 'TodoCard.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  Widget buildTodoList(BuildContext context) {
    final viewModel = Provider.of<TodoViewModel>(context);

    return ListView.builder(
        itemCount: viewModel.todos.length,
        itemBuilder: (context, index) {
          return TodoCard(index: index);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TodoViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト一覧'),
        backgroundColor: Colors.cyan,
      ),
      body: buildTodoList(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTodo = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const TodoAddPage();
            }),
          ) as Todo;

          if (newTodo == null) {
            return;
          }

          viewModel.append(newTodo);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

}