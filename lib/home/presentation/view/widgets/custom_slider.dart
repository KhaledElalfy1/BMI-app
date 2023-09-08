import 'package:bmi/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHightContainer extends StatelessWidget {
  const CustomHightContainer({super.key, required this.value, this.onChanged});
  final double value;
  final void Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.h,
      width: 334.w,
      decoration: BoxDecoration(
        color: const Color(0xff1A1F38),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 25.h,
          ),
          Text('HIEGHT', style: AppStyles.style20),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Slider(
              value: value,
              min: 0,
              max: 200,
              divisions: 200,
              activeColor: const Color(0xff6200EE),
              inactiveColor: const Color(0xff574682),
              label: '${value.round()}',
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}