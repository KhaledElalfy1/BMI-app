import 'package:bmi/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGenderContainer extends StatefulWidget {
  const CustomGenderContainer(
      {super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  State<CustomGenderContainer> createState() => _CustomGenderContainerState();
}

class _CustomGenderContainerState extends State<CustomGenderContainer> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelect = !isSelect;
        });
      },
      child: Container(
        height: 159.h,
        width: 136.w,
        decoration: BoxDecoration(
          color: const Color(0xff1A1F38),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: isSelect ? Colors.blue : Colors.transparent,
            width: 2.w,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              widget.icon,
              size: 70.sp,
              color: Colors.white,
            ),
            Text(
              widget.text,
              style: AppStyles.style24,
            ),
          ],
        ),
      ),
    );
  }
}
