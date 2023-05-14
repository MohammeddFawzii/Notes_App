import 'package:flutter/material.dart';
import 'package:notes/featurs/home/widgets/home_view_body.dart';
import 'package:notes/utils/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = 'home view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.buttonsColor,
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: AppColors.mainBgColor,
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
