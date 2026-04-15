import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_learning/family_provider.dart';
import 'package:riverpod_learning/future_provider.dart';
import 'package:riverpod_learning/search_provider.dart';
import 'package:riverpod_learning/slider_provider.dart';
import 'package:riverpod_learning/stream_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // use the FamilyProvider with a parameter
    final result = ref.watch(multiplierProvider(10));

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod learn')),
      body: Text(result.toString()),
    );
  }
}
