import 'package:bmi/app_styles.dart';
import 'package:bmi/result/presentation/view/widgets/custom_result_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 56.h,
              width: double.infinity,
            ),
            Text(
              'Your Result:',
              style: AppStyles.style36,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset('assets/images/BackIcon.svg'),
            ),
            SizedBox(
              height: 21.h,
            ),
            const CustomResultContainer()
          ],
        ),
      ),
    );
  }
}

