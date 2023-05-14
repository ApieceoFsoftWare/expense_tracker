import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  sigara,
  yemek,
  market,
  teknoloji,
  diger,
}

const categoryIcons = {
  Category.sigara: Icons.smoking_rooms_rounded,
  Category.yemek: Icons.fastfood_rounded,
  Category.market: Icons.shopping_cart,
  Category.teknoloji: Icons.devices_rounded,
  Category.diger: Icons.question_mark_rounded,
};

class Expense {
  Expense({
    required this.title,
    required this.date,
    required this.amount,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
