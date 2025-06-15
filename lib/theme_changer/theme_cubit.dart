import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<String> {
  ThemeCubit() : super('darkTheme');

  void changeThemeToDark()=> emit('darkTheme');
  void changeThemeToLight()=> emit('lightTheme');

}