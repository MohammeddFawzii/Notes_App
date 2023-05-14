import 'package:flutter/material.dart';
import 'package:notes/featurs/home/widgets/app_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AppHeader(icon: Icons.search, titel: "Notes"),
      ],
    );
  }
}
