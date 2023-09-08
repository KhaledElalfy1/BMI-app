import 'package:bmi/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDataContainer extends StatelessWidget {
  const CustomDataContainer(
      {super.key,
      required this.text,
      required this.data,
      this.increment,
      this.decrement});
  final String text;
  final int data;
  final void Function()? increment, decrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.h,
      width: 136.w,
      decoration: BoxDecoration(
        color: const Color(0xff1A1F38),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: AppStyles.style24,
            ),
            Text(
              data.toString(),
              style: AppStyles.style30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: increment,
                  icon: Icon(
                    Icons.add_circle_outlined,
                    color: const Color(0xffE5E5E5),
                    size: 35.sp,
                  ),
                ),
                IconButton(
                  onPressed: decrement,
                  icon: Icon(
                    Icons.remove_circle_outlined,
                    color: const Color(0xffE5E5E5),
                    size: 35.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
