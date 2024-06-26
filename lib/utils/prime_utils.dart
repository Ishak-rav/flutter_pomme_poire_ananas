bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

String getNumberType(int number) {
  if (isPrime(number)) {
    return 'Nombre premier';
  } else if (number % 2 == 0) {
    return 'Nombre pair';
  } else {
    return 'Nombre impair';
  }
}
