import 'package:bmi/app_styles.dart';
import 'package:bmi/bmi_cubit/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomResultContainer extends StatelessWidget {
  const CustomResultContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 535,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff1A1F38),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 45.h,
            // width: double.infinity,
          ),
          Text(
            getText(BlocProvider.of<BmiCubit>(context).result()),
            style: AppStyles.style35.copyWith(
              color: getColor(BlocProvider.of<BmiCubit>(context).result()),
            ),
          ),
          SizedBox(
            height: 70.h,
            width: double.infinity,
          ),
          Text(
            BlocProvider.of<BmiCubit>(context).result().toStringAsFixed(2),
            style: AppStyles.style80,
          ),
          SizedBox(
            height: 175.h,
            width: double.infinity,
          ),
          Text(
            'STAY HEALTHY',
            style: AppStyles.style20,
          )
        ],
      ),
    );
  }
}

String getText(double res) {
  if (res < 18.5) {
    return 'UNDER WIGHT';
  } else if (res >= 18.5 && res < 24.9) {
    return 'NORMAL';
  } else if (res >= 25.0 && res < 29.9) {
    return 'Overweight';
  } else {
    return 'Obese';
  }
}

Color getColor(double res) {
  if (res < 18.5) {
    return const Color(0xff09FF7A);
  } else if (res >= 18.5 && res < 24.9) {
    return const Color(0xff09FF7A); 

  } else if (res >= 25.0 && res < 29.9) {
    return const Color(0xffFFC93C);
  } else {
    return const Color(0xffFF0000);
  }
}

