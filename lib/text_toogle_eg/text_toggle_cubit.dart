import 'package:flutter_bloc/flutter_bloc.dart';

class TextToggleCubit extends Cubit<String> {
  TextToggleCubit() : super('Hello');

  void toggleText() {
    if (state == 'Hello') {
      emit('Welcome!');
    } else if (state == 'Welcome!') {
      emit('Flutter is fun!');
    } else {
      emit('Hello');
    }
  }
}
