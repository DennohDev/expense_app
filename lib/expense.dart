import 'package:intl/intl.dart';

// This class will map data from the database table to the property table
class Expense {
  final int id;
  final double amount;
  final DateTime date;
  final String category;

  String get formattedDate {
    var formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  static final columns = ['id', 'amount', 'date', 'category'];

  Expense(this.id, this.amount, this.date, this.category);

  factory Expense.fromMap(Map<String, dynamic> data) {
    return Expense(data['id'], data['amount'], DateTime.parse(data['date']),
        data['category']);
  }

  // This converts the expense object to Dart Map
  Map<String, dynamic> toMap() => {
        "id": id,
        "amount": amount,
        "date": date.toString(),
        "category": category,
      };

}
