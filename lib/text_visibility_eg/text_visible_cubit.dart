import 'package:flutter_bloc/flutter_bloc.dart';

class TextVisibleCubit extends Cubit<bool>{
  TextVisibleCubit() : super(true);

//There’s no need to define a new isTextVisible variable — use the state directly.
  void showNHideText (){
      emit(!state);
  }

}