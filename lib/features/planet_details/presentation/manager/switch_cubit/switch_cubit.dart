import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchCardCubit extends Cubit<bool> {
  SwitchCardCubit({bool initial = false}) : super(initial);

  void toggle() => emit(!state);
  void set(bool value) => emit(value);
}
