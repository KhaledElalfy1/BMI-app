import 'package:bmi/bmi_cubit/bmi_cubit.dart';

import 'package:bmi/home/presentation/view/widgets/custom_bar.dart';
import 'package:bmi/home/presentation/view/widgets/custom_data_container.dart';
import 'package:bmi/home/presentation/view/widgets/custom_gender_container.dart';
import 'package:bmi/home/presentation/view/widgets/custom_slider.dart';
import 'package:bmi/result/presentation/view/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                const CustomBar(text: 'BMI calculator'),
                SizedBox(
                  height: 31.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomGenderContainer(
                      icon: Icons.male,
                      text: 'MALE',
                    ),
                    CustomGenderContainer(
                      icon: Icons.female,
                      text: 'FEMALE',
                    ),
                  ],
                ),
                SizedBox(
                  height: 57.h,
                ),
                CustomHightContainer(
                  value: BlocProvider.of<BmiCubit>(context).hight,
                  onChanged: BlocProvider.of<BmiCubit>(context).getHight,
                ),
                SizedBox(
                  height: 83.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomDataContainer(
                      text: 'WIGHT',
                      data: BlocProvider.of<BmiCubit>(context).wight,
                      increment: () {
                        BlocProvider.of<BmiCubit>(context)
                            .operation(data: 'wight', opr: 'i');
                      },
                      decrement: () {
                        BlocProvider.of<BmiCubit>(context)
                            .operation(data: 'wight', opr: 'd');
                      },
                    ),
                    CustomDataContainer(
                      text: 'AGE',
                      data: BlocProvider.of<BmiCubit>(context).age,
                      increment: () {
                        BlocProvider.of<BmiCubit>(context)
                            .operation(data: 'age', opr: 'i');
                      },
                      decrement: () {
                        BlocProvider.of<BmiCubit>(context)
                            .operation(data: 'age', opr: 'd');
                      },
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const ResultScreen(),
                        ));
                  },
                  child: const CustomBar(
                    text: 'CALCULATE',
                    color: Color(0xffF10606),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
