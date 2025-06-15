import 'package:flutter/material.dart';
import 'package:flutter_bloc_learn/counter_basic_eg/counter_cubit.dart';
import 'package:flutter_bloc_learn/counter_basic_eg/counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/show_loader_eg/laoder_cubit.dart';
import 'package:flutter_bloc_learn/show_loader_eg/loader_page.dart';
import 'package:flutter_bloc_learn/text_toogle_eg/text_toggle_cubit.dart';
import 'package:flutter_bloc_learn/text_toogle_eg/text_toogle_page.dart';
import 'package:flutter_bloc_learn/global_bloc_access_theme.dart';
import 'package:flutter_bloc_learn/text_visibility_eg/text_visible_page.dart';
import 'package:flutter_bloc_learn/theme_changer/theme_cubit.dart';
import 'package:flutter_bloc_learn/theme_changer/theming_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
            create: (_) => CounterCubit(),
          ),
          BlocProvider<LaoderCubit>(
            create: (_) => LaoderCubit(),
          ),
          BlocProvider<ThemeCubit>(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider<TextToggleCubit>(
            create: (_) => TextToggleCubit(),
          ),
        ],
        // child: ThemingPage(), 
        child: TextVisiblePage(), 
        // child: TextTogglePage(), 
        // child: ThemeAccessScreen(), 
        // child: LoaderPage(), 
        // child: CounterPage(), 
      ),
    );
  }
}
