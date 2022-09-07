import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CityName extends StatelessWidget {
  const CityName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gyms",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            // City Name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Noida Sector 8", style: TextStyle(fontSize: 10.sp),),
                Icon(Icons.arrow_drop_down,size: 12.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
