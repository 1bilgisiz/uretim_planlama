import 'package:flutter/material.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationBodyView.dart';
import 'package:uretim_planlama/App/Operation/View/Components/OperationDrawerWidget.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationEvent.dart';
import 'package:uretim_planlama/AppBloc.dart';
import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

class OperationView extends StatefulWidget {
  const OperationView({super.key});

  @override
  State<OperationView> createState() => _OperationViewState();
}

class _OperationViewState extends State<OperationView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        body: RefreshIndicator(
          onRefresh: () async {
            AppBloc.operationBloc
                .add(OperationFetchOperationEvent(OperationStates.all));
          },
          child: OperationBodyView(scaffoldKey: _scaffoldKey),
        ),
        endDrawer: const OperationDrawerWidget(),
      ),
    );
  }
}
