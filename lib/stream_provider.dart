import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dart:math';

// stream provider bnaye h jo ki double value ko listen kr rha h
// * assync use hota h stream provider me
final stockPriceProvider = StreamProvider<double>((ref) async* {
final random = Random();
double currentPrice = 100.0;


// logic likhe h
while (true){
  // 1 sec wait kreaga
  await Future.delayed( const Duration(seconds: 1));
  currentPrice += random.nextDouble() *4 - 2;
  yield double.parse(currentPrice.toStringAsFixed(2));
}
});