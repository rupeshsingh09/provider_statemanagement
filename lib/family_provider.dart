import 'package:flutter_riverpod/legacy.dart';

final multiplierProvider = StateProvider.family<int, int >((ref, number) {
  return number * 2;
});