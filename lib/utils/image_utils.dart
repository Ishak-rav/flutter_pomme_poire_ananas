import 'package:pomme_poire_ananas/utils/prime_utils.dart';

String getImageAsset(int number) {
  if (isPrime(number)) {
    return 'assets/images/ananas.png';
  } else if (number % 2 == 0) {
    return 'assets/images/poire.png';
  } else {
    return 'assets/images/pomme.png';
  }
}
