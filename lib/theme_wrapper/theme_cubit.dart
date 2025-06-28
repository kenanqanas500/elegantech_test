import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  final String themeKey = 'theme';
  final String lightKey = 'light';
  final String darkKey = 'dark';
  ThemeCubit() : super(ThemeState.light);

  toggleTheme() {
    emit(state == ThemeState.dark ? ThemeState.light : ThemeState.dark);
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    if (json.isEmpty) {
      return ThemeState.light;
    }
    return json[themeKey] == lightKey ? ThemeState.light : ThemeState.dark;
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {themeKey: state == ThemeState.light ? lightKey : darkKey};
  }
}
