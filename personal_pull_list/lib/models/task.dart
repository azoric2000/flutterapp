class Task {
  final String id;
  final String title;
  final int number;
  final DateTime ncbdDate;
  final bool isDone;

  Task({
    required this.id,
    required this.title,
    required this.number, 
    required this.ncbdDate,
    required this.isDone,
  });
}