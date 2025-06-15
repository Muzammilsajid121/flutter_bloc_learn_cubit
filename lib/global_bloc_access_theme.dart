import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/theme_changer/theme_cubit.dart';
//-- 🔥 Summary:
//-- context.read<ThemeCubit>()	To call functions/methods
//-- context.watch<ThemeCubit>()	To read and rebuild on state
//The theme cubit is used in main.dart making it global acess so it can be directly used in this way
//now you can use it on any screen directly using context.read<ThemeCubit>() or context.watch<ThemeCubit>().


class ThemeAccessScreen extends StatelessWidget {
  const ThemeAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('🔁 Only outer build runs once');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Access ThemeCubit Globally"),
      ),
      body: BlocBuilder<ThemeCubit, String>(
        builder: (context, currentTheme) {
          print('🎯 BlocBuilder rebuilt');

          return Container(
            color: currentTheme == 'darkTheme' ? Colors.black : Colors.amber.shade100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Current Theme: $currentTheme',
                    style: TextStyle(
                      color: currentTheme == 'darkTheme' ? Colors.white : Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ThemeCubit>().changeThemeToDark();
                    },
                    child: const Text('Switch to Dark Theme'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ThemeCubit>().changeThemeToLight();
                    },
                    child: const Text('Switch to Light Theme'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


// class ThemeAccessScreen extends StatelessWidget {
//   const ThemeAccessScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print('whole widget tree updating');
//     final currentTheme = context.watch<ThemeCubit>().state;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Access ThemeCubit Globally"),
//         backgroundColor: currentTheme == 'darkTheme' ? Colors.green.shade400 : Colors.amber,
//       ),
//       backgroundColor:
//           currentTheme == 'darkTheme' ? Colors.black : Colors.amber.shade100,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Current Theme: $currentTheme',
//               style: TextStyle(
//                 color: currentTheme == 'darkTheme' ? Colors.white : Colors.black,
//                 fontSize: 20,
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 context.read<ThemeCubit>().changeThemeToDark();
//               },
//               child: const Text('Switch to Dark Theme'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 context.read<ThemeCubit>().changeThemeToLight();
//               },
//               child: const Text('Switch to Light Theme'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
