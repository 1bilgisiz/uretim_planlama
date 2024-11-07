import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double width() => MediaQuery.of(this).size.width;
  double height() => MediaQuery.of(this).size.height;
}
