import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color colour;

  const Category({
    required this.id,
    required this.title,
    this.colour = const Color(0xff922D50),
  });
}
