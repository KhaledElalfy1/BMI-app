import 'package:bmi/bmi_cubit/bmi_cubit.dart';

import 'package:bmi/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BmiAPP());
}

class BmiAPP extends StatelessWidget {
  const BmiAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) => BlocProvider(
        create: (context) => BmiCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFF0A0E21),
            fontFamily: 'Roboto',
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
