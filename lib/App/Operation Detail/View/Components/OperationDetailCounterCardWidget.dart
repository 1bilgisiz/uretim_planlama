import 'package:flutter/material.dart';

class OperationDetailCounterCardWidget extends StatelessWidget {
  final String value;
  final String title;
  const OperationDetailCounterCardWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(16),
        color: Colors.yellow.withOpacity(0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 120,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.none,
              shadows: [
                Shadow(
                  offset: Offset(4.0, 4.0),
                  blurRadius: 10.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.white,
              decoration: TextDecoration.none,
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
    );
  }
}
