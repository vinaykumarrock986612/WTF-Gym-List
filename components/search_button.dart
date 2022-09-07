import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Container(
        height: 50.h,
        width: 80.h,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(50.h)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp
                ),
              ),
              Icon(Icons.search, color: Colors.white,size: 20.sp,),
            ],
          ),
        ),
      ),
    );
  }
}
