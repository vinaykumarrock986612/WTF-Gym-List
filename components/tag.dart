import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tag extends StatelessWidget {
  const Tag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 30.h,
          width: 55.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(50.sp)),
          child: Text(
            "All",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class UnselectedTag extends StatelessWidget {
  String? address;

  UnselectedTag(this.address);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 30.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.sp),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ]),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.h),
            child: Text(
              "$address",
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
