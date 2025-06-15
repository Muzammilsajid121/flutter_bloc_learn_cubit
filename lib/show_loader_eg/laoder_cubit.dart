import 'package:flutter_bloc/flutter_bloc.dart';

class LaoderCubit extends Cubit<String>{
  LaoderCubit() : super('stoped');

  void startLoader()=> emit('started');
  void stopLoader()=> emit('stopped');


}