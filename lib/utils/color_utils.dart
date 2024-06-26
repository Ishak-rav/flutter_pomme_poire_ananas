import 'package:flutter/material.dart';
import 'prime_utils.dart';

Color getBackgroundColor(int number) {
  if (isPrime(number)) {
    return Colors.yellow;
  } else if (number % 2 == 0) {
    return Colors.indigo;
  } else {
    return Colors.cyan;
  }
}
