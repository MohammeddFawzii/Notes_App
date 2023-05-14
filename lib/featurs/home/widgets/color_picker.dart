import 'package:flutter/material.dart';
import 'package:notes/utils/app_colors.dart';

class ColorPiker extends StatelessWidget {
  const ColorPiker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ColorElement(color: AppColors.colorsPiker1stColor),
        ColorElement(color: AppColors.colorsPiker2ndColor),
        ColorElement(color: AppColors.colorsPiker3rdcolor),
        ColorElement(color: AppColors.colorsPiker4thcolor),
      ],
    );
  }
}

class ColorElement extends StatelessWidget {
  const ColorElement({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
