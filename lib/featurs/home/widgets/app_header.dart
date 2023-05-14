import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
    required this.icon,
    required this.titel,
  });
  final IconData icon;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18, left: 20),
          child: Text(
            titel,
            style: const TextStyle(color: Colors.white, fontSize: 34),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 18, right: 20),
          child: IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    size: 34,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
              )),
        )
      ],
    );
  }
}
