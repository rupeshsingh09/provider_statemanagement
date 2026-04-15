import 'package:flutter_riverpod/flutter_riverpod.dart';

// future provider bnaye h, yha string likhe h kyuki string form m data ko  return krana chahte h ,
final futureProvider = FutureProvider<List<String>>((ref) async {
  // 2 sec wait krega
  await Future.delayed(const Duration(seconds: 2));
  // wait k badd 3 return kreg
  return ['Rupesh, hvgbhj' ,'fgvbmnh'];
});
