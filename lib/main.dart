import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soumtech/business%20logic/app__cubit/cubit/appcubit_cubit.dart';
import 'package:soumtech/core/constant/constants.dart';
import 'package:soumtech/core/constant/theme.dart';
import 'package:soumtech/layout/layout.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await startShared();
  // await getLocale();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AppCubit())],
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            // locale: Locale(prefs.getString("lang") ?? "en"),
            // supportedLocales: const [Locale('en'), Locale('ar')],
            debugShowCheckedModeBanner: false,
            title: 'Soumtech',
            theme: ThemeData(
                primaryColor: Colors.deepOrangeAccent,
                iconTheme: const IconThemeData(
                  color: Colors.white,
                )),
            home: AppLayoutScreen(),
          );
        },
      ),
    );
  }
}
