import 'package:flutter_bloc/flutter_bloc.dart';

class DaysTogetCubit extends Cubit<int> {
  DaysTogetCubit() : super(0);

  void togetBetwenDays(int index) {
    emit(index);
  }
}
