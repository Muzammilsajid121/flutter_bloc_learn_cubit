import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/text_visibility_eg/text_visible_cubit.dart';
import 'package:flutter_bloc_learn/widgets/custom_appbar.dart';


class TextVisiblePage extends StatelessWidget {
   const TextVisiblePage({super.key});


  @override
  Widget build(BuildContext context) {
    debugPrint('build once');
    return  BlocBuilder<TextVisibleCubit, bool>(
      builder: (context, state) {
        return Scaffold(
        appBar: CustomAppBar(  title: 'TEXT VISIBILITY', ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
             state?  Text('Text is visible now'): Text(''),
             SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  context.read<TextVisibleCubit>().showNHideText();
                    // isTextVisible =! isTextVisible;                  
                },
                child: Text( state? 'Make it Unvisible' : 'Make It Visible'))
            ],
          ),
        ),
      );
    
      },
       );
  }
}