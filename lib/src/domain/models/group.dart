import 'package:objectbox/objectbox.dart';

import 'task.dart';

@Entity()
class Group {
  @Id()
  int id = 0;
  String name;
  int color;

  @Backlink()
  final tasks = ToMany<Task>();

  Group({
    required this.name,
    required this.color,
  });
}