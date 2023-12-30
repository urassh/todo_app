import 'package:flutter/material.dart';
import 'package:todo_app/DataModel/Todo.dart';

class TodoAddPage extends StatefulWidget {
  const TodoAddPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  String _text = '';
  bool isImportant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_text, style: const TextStyle(color: Colors.blue)),
            const SizedBox(height: 8),

            TextField(
                onChanged: (String value) {
                  setState(() {
                    _text = value;
                  });
                }
            ),

            const SizedBox(height: 8),

            ElevatedButton.icon(
              icon: Icon(
                Icons.star,
                color: isImportant ? Colors.yellow : Colors.white,
              ),
              label: const Text('Important'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isImportant = isImportant ? false : true;
                });
              },
            ),

            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue
                ),
                onPressed: () {
                  Todo newTodo = Todo(name: _text, isImportant: isImportant);
                  Navigator.of(context).pop(newTodo);
                },
                child: const Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
