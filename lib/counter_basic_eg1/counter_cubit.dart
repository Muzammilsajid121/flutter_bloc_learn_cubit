// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(1);  //initial value of counter

  void increment() => emit(state + 1); //Emit karne se UI ko notify milta hai, aur BlocBuilder/CubitBuilder use update karta hai.
  void decrement() => emit(state - 1);
}

// | Feature                       | Explanation                                                                        |
// | ----------------------------- | ---------------------------------------------------------------------------------- |
// | **State**                     | Ek variable ya object jo app ke current data ko represent karta hai                |
// | **Emit**                      | State ko update karne ka tareeqa                                                   |
// | **Methods (e.g., increment)** | Ye logical actions hain jo UI se trigger hote hain                                 |
// | **Cubit ka kaam**             | Business logic aur state transitions handle karna, bina complex event structure ke |



