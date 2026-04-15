import 'package:flutter_riverpod/legacy.dart';

final sliderProvider = StateProvider<AppState>((ref) {
  return AppState(slider: .5, showPassword: false);
});

// class create kiye h appstate nam se
class AppState {

  final double slider;
  final bool showPassword;
  // dono value ko required kr diye
  AppState({required this.slider, required this.showPassword});

  AppState copyWith({double? slider, bool? showPassword}) {
    return AppState(
      slider: slider ?? this.slider,
      showPassword: showPassword ?? this.showPassword,
    );
  }
}
