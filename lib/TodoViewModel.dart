import 'package:flutter/foundation.dart';
import 'DataModel/Todo.dart';

class TodoViewModel extends ChangeNotifier {
  final List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  void append(Todo newTodo) {
    _todos.add(newTodo);
    notifyListeners();
  }

  void delete(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  void switchImportant(int index) {
    Todo todo = _todos[index];
    bool newImportant = todo.isImportant ? false : true;
    _todos[index] = Todo(name: todo.name, isImportant: newImportant);
    notifyListeners();
  }
}