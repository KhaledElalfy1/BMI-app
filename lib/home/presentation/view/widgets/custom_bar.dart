import 'package:bmi/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key, required this.text, this.color});
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: double.infinity,
      color: color ??const Color(0xff1A1F38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppStyles.style30,
          ),
        ],
      ),
    );
  }
}
