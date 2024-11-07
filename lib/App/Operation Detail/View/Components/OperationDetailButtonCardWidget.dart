import 'package:flutter/material.dart';

class OperationDetailButtonCardWidget extends StatelessWidget {
  final OperationDetailButtonOption option;
  const OperationDetailButtonCardWidget({
    super.key,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: option.color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: option.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          minimumSize: const Size(250, 250),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              option.icon,
              color: Colors.white,
              size: 120,
            ),
            const SizedBox(height: 10),
            Text(
              option.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(4.0, 4.0),
                    blurRadius: 10.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OperationDetailButtonOption {
  final Color color;
  final IconData icon;
  final String title;
  final void Function()? onPressed;

  OperationDetailButtonOption({
    required this.color,
    required this.icon,
    required this.title,
    this.onPressed,
  });
}
