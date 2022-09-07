import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GymProfile extends StatelessWidget {
  String? rating;
  String? gymName;
  String? address;
  String? image;

  GymProfile({this.rating, this.gymName, this.address, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Column(
        children: [
          Stack(
            children: [
              // Cover Photo
              Container(
                height: 135.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.grey[300],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: image != null
                      ? Image.network(
                          "$image",
                          fit: BoxFit.cover,
                        )
                      : Container(),
                ),
              ),
              // Pro Tag
              Container(
                margin: EdgeInsets.only(top: 20.h),
                alignment: Alignment.center,
                height: 25.h,
                width: 60.h,
                color: Colors.orangeAccent,
                child: Text(
                  "PRO",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Rating
              Container(
                margin: EdgeInsets.only(top: 112.h, left: 25.h),
                alignment: Alignment.center,
                height: 23.h,
                width: 45.h,
                color: Colors.green,
                child: Text(
                  "$rating★",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // ZUMBA
              Container(
                margin: EdgeInsets.only(top: 112.h, left: 80.h),
                alignment: Alignment.center,
                height: 23.h,
                width: 55.h,
                color: Colors.red,
                child: Text(
                  "ZUMBA",
                  style: TextStyle(color: Colors.white, fontSize: 11.sp),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "$gymName",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp, size: 15.sp),
                        SizedBox(
                          width: 5.h,
                        ),
                        Text(
                          "3.8 KM",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "$address",
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
