import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/theme_changer/theme_cubit.dart';


class ThemingPage extends StatelessWidget {
  const ThemingPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('build once');
    return BlocBuilder<ThemeCubit, String>(
      builder: (context, themeState) {

        final Color bgColor = themeState == 'darkTheme' ? Colors.black : Colors.amberAccent;
        final Color textColor = themeState == 'darkTheme' ? Colors.white : Colors.black;

        return Scaffold(
          body: Container(
            color: bgColor, width: double.infinity,  height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  themeState == 'darkTheme' ? 'Dark Theme Active' : 'Light Theme Active',
                  style: TextStyle( fontSize: 20, color: textColor, ),   ),
                const SizedBox(height: 40),

                CustomElevatedButton( width: 200, label: 'Switch to Dark Theme',
                  onTap: () { context.read<ThemeCubit>().changeThemeToDark();      }, ),
                const SizedBox(height: 20),
                CustomElevatedButton(    width: 200,   label: 'Switch to Light Theme',
                  onTap: () { context.read<ThemeCubit>().changeThemeToLight();   }, ),
              ],
            ),
          ),
        );
      },
    );
  }
}


// return Scaffold(
//   backgroundColor: Colors.white,
//   appBar: AppBar(title: const Text("Efficient Bloc")),
//   body: Column(
//     children: [
//       BlocBuilder<ThemeCubit, String>(
//         builder: (context, themeState) {
//           return Container(
//             height: 100,
//             color: themeState == 'darkTheme' ? Colors.black : Colors.amberAccent,
//           );
//         },
//       ),
//       ElevatedButton(
//         onPressed: () => context.read<ThemeCubit>().changeThemeToDark(),
//         child: const Text("Dark Theme"),
//       ),
//     ],
//   ),
// );

class CustomElevatedButton extends StatelessWidget {
  final String? label;
  final Color? labelColor;
  final VoidCallback? onTap;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? iconColor;
  final double borderRadius;
  final double? width;

  const CustomElevatedButton({
    super.key,
    this.label,
    this.labelColor = Colors.white,
    this.icon,
    this.backgroundColor = const Color(0xff6A5AE0),
    this.onTap,
    this.foregroundColor = const Color(0xffFFFFFF),
    this.iconColor,
    this.width,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          minimumSize: const Size(0, kToolbarHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, color: iconColor ?? foregroundColor, size: 20),
              if (label != null) const SizedBox(width: 8),
            ],
            if (label != null)
              Text(
                label!,
              ),
          ],
        ),
      ),
    );
  }
}