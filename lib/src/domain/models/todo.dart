import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

@immutable
class Todo {
  final String id;
  final String title;
  final String group;
  final bool completed;

  const Todo({
    required this.title,
    required this.id,
    required this.group,
    this.completed = false,
  });
}

class TodoList extends Notifier<List<Todo>> {
  @override
  List<Todo> build() => [
    // for testing
    // TODO remove
    const Todo(id: 'todo-0', title: 'Buy cookies', group: "test"),
    const Todo(id: 'todo-1', title: 'Star Riverpod', group: "test"),
    const Todo(id: 'todo-2', title: 'Have a walk', group: "test"),
  ];

  void add(String title, String? group) {
    state = [
      ...state,
      Todo(
        id: _uuid.v4(),
        title: title,
        group: group ?? 'misc',
      ),
    ];
  }

  void toggle(String id) {
    state = [
      // TODO convert to functional map style
      for (final todo in state)
        if (todo.id == id)
          Todo( 
            id: todo.id,
            completed: !todo.completed,
            title: todo.title,
            group: todo.group,
          )
        else
          todo
    ];
  }

  void edit({required String id, required String title, String? group}) {
    state = [
      for (final todo in state)
          if (todo.id == id)
            Todo(
              id: todo.id,
              completed: todo.completed,
              title: title,
              group: group ?? todo.group,
            )
          else
            todo,
    ];
  }

  void remove(Todo target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }
}