import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;

/// Custom [BlocObserver] that observes all bloc and cubit state changes.
class AppBlocObserver extends BlocObserver {
  @override
  // For Cubit without events
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // if (bloc is Cubit) {
    developer.log(" ${"${bloc.runtimeType} current: ${change.currentState} next: ${change.nextState}"}");
    // }
  }

//For BLoC with events
  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   super.onTransition(bloc, transition);

  //   developer.log(
  //       "${Colorize("Current: ").apply(Styles.LIGHT_YELLOW)} ${transition.currentState}, ${Colorize("Event: ").apply(Styles.LIGHT_RED)} ${transition.event}, ${Colorize("Next: ").apply(Styles.LIGHT_GREEN)} ${transition.nextState}");
  // }
}
