import 'package:flutter/material.dart';
import 'package:notes/featurs/home/widgets/home_view_body.dart';
import 'package:notes/utils/app_colors.dart';

import '../widgets/bottom_sheet_body.dart';

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
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: AppColors.mainBgColor,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const BottomSheetBody();
              },
            );
          },
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
