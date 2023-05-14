import 'package:flutter/material.dart';
import 'package:notes/featurs/home/views/home_view.dart';
import 'package:notes/utils/app_colors.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true, scaffoldBackgroundColor: AppColors.mainBgColor),
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
