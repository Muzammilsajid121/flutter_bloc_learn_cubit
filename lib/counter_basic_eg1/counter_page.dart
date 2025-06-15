import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/counter_basic_eg1/counter_cubit.dart';
import 'package:flutter_bloc_learn/show_loader_eg/loader_page.dart';
import 'package:flutter_bloc_learn/widgets/custom_appbar.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('build once');
    return Scaffold(
      appBar: CustomAppBar(title: 'Counter App Eg:1', onNext: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> LoaderPage())) ,),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(child: Text('$count', style: TextStyle(fontSize: 30),)),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'incrementBtn',
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            heroTag: 'decrementBtn',
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}