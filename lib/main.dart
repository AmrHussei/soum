import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soumtech/business%20logic/app__cubit/cubit/appcubit_cubit.dart';
import 'package:soumtech/core/constant/constants.dart';
import 'package:soumtech/pressentaion/home/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await startShared();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
          title: 'Soumtech',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          home: const HomeScreen()),
    );
  }
}
