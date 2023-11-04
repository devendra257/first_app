import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //* Initial state Handle karna jaruri yaha cubit me
  CounterCubit() : super(0);

  void incrementCount() {
    //* state int value because it is used to int....
    emit(state + 1);
  }
}
