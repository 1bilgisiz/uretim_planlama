import 'package:flutter/material.dart';
import 'package:swipe/swipe.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationMaterialListTabContent.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationTimesTabContent.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationWorkOrderInfoTabContent.dart';
import 'package:uretim_planlama/Utils/build_contexts.dart';

class OperationDetailArrowButtonWidget extends StatefulWidget {
  const OperationDetailArrowButtonWidget({super.key});

  @override
  State<OperationDetailArrowButtonWidget> createState() =>
      _OperationDetailArrowButtonWidgetState();
}

class _OperationDetailArrowButtonWidgetState
    extends State<OperationDetailArrowButtonWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: -20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _showModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: double.infinity,
        maxHeight: context.height() * 0.65,
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setVal) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TabBar(
                    isScrollable: false,
                    controller: _tabController,
                    onTap: (value) {
                      setVal(() {
                        _tabController.index = value;
                      });
                    },
                    tabs: const [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(width: 8), // Space between icon and text
                            Text("OPERASYON ZAMANLARI"),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.list),
                            SizedBox(width: 8),
                            Text("OPERASYON MALZEME LİSTESİ"),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.info),
                            SizedBox(width: 8),
                            Text("İŞ EMRİ BİLGİLERİ"),
                          ],
                        ),
                      ),
                    ],
                    labelStyle: const TextStyle(fontSize: 20),
                    unselectedLabelStyle: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Builder(builder: (context) {
                    if (_tabController.index == 0) {
                      return const OperationTimesTabContent();
                    }
                    if (_tabController.index == 1) {
                      return const OperationMaterialListTabContent();
                    }

                    return const OperationWorkOrderInfoTabContent();
                  })
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Swipe(
      onSwipeUp: () {
        _showModal();
      },
      child: Container(
        height: 80,
        width: context.width(),
        color: Colors.transparent,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _animation.value),
              child: const Icon(
                Icons.keyboard_double_arrow_up_sharp,
                size: 55,
                color: Colors.black,
              ),
            );
          },
        ),
      ),
    );
  }
}
