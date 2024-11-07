import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uretim_planlama/App/Operation/View/OperationView.dart';
import 'package:uretim_planlama/App/Operation/ViewModel/OperationEvent.dart';
import 'package:uretim_planlama/AppBloc.dart';
import 'package:uretim_planlama/AppBlocObserver.dart';
import 'package:uretim_planlama/Model/Operations/OperationStates.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //MARK: SYSTEM ATTRIBUTES
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft,],
  );

  //MARK: OBSERVER SETUP
  Bloc.observer = const AppBlocObserver();

  //MARK: PROJECT STARTS
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBloc.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Üretim Tezgahı',
        home: Builder(
          builder: (context) {
            AppBloc.operationBloc
                .add(OperationFetchOperationEvent(OperationStates.all));
            return const OperationView();
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    AppBloc.dispose();
    super.dispose();
  }
}
