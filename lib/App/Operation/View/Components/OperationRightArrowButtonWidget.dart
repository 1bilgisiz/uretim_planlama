import 'package:flutter/material.dart';

class OperationRightArrowButtonWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const OperationRightArrowButtonWidget({super.key, required this.scaffoldKey});

  @override
  State<OperationRightArrowButtonWidget> createState() =>
      _OperationRightArrowButtonWidgetState();
}

class _OperationRightArrowButtonWidgetState
    extends State<OperationRightArrowButtonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: -20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) {
        widget.scaffoldKey.currentState!.openEndDrawer();
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(_animation.value, 0),
            child: const Icon(
              Icons.keyboard_double_arrow_left,
              size: 30,
              color: Colors.black,
            ),
          );
        },
      ),
    );
  }
}
