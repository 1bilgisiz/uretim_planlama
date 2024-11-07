import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationOperationStateCubit.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationEvent.dart';
import 'package:uretim_planlama/AppBloc.dart';
import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

class OperationButtonWidget extends StatelessWidget {
  final OperationButtonOption option;
  const OperationButtonWidget({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          if (AppBloc.operationOperationStateCubit.state == option.status) {
            AppBloc.operationBloc
                .add(OperationFilterOperationEvent(OperationStates.all));
          } else {
            AppBloc.operationBloc
                .add(OperationFilterOperationEvent(option.status));
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: option.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(8),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(option.icon, size: 40, color: Colors.white),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    AppBloc.operationBloc
                        .getOperationCountOfStates(option.status)
                        .toString(),
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontSize: 110,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    option.status.toStringState(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: BlocBuilder<OperationOperationStateCubit, OperationStates>(
                builder: (context, state) {
                  return Visibility(
                    visible: state == option.status,
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OperationButtonOption {
  final IconData icon;
  final Color backgroundColor;
  final OperationStates status;

  OperationButtonOption({
    required this.icon,
    required this.backgroundColor,
    required this.status,
  });
}
