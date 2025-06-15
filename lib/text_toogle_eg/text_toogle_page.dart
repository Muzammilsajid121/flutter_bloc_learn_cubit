import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'text_toggle_cubit.dart';

class TextTogglePage extends StatelessWidget {
  const TextTogglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Toggle Cubit')),
      body: BlocBuilder <TextToggleCubit, String>(
        builder: (context, state)=>
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state),
              ElevatedButton(
                onPressed:(){context.read<TextToggleCubit>().toggleText();} ,
                 child: Text('Change Text'))
            ],
          ),
        )
        )
  
    
    );
  }
}
