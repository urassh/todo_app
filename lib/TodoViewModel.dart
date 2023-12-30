import 'package:flutter/foundation.dart';
import 'DataModel/Todo.dart';

class TodoViewModel extends ChangeNotifier {
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  void append(Todo newTodo) {
    _todos.add(newTodo);
    notifyListeners();
  }

  void delete(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}