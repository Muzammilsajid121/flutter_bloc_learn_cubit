import 'package:flutter/material.dart';
import 'package:flutter_bloc_learn/counter_basic_eg1/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/counter_basic_eg1/counter_page.dart';
import 'package:flutter_bloc_learn/show_loader_eg/laoder_cubit.dart';
import 'package:flutter_bloc_learn/text_toogle_eg/text_toggle_cubit.dart';
import 'package:flutter_bloc_learn/text_visibility_eg/text_visible_page.dart';
import 'package:flutter_bloc_learn/theme_changer/theme_cubit.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //--multi provider should be wrap with material app
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
        BlocProvider<LaoderCubit>(create: (_) => LaoderCubit()),
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<TextToggleCubit>(create: (_) => TextToggleCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}
