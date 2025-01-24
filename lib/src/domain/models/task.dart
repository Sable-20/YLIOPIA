import 'package:objectbox/objectbox.dart';

@Entity()
class Task {
  @Id()
  int id = 0;

  String description;

  bool completed = false;

  Task({
    required this.description,
  });
}