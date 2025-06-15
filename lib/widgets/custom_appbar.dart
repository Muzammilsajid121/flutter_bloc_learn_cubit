import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onNext;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink.shade50,
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.arrow_forward), color: Colors.red, tooltip: 'Next Bloc Example',
          onPressed: onNext,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
