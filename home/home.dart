import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wtf_gym_list/components/back_button.dart';
import 'package:wtf_gym_list/components/circular_city_profile.dart';
import 'package:wtf_gym_list/components/city_name.dart';
import 'package:wtf_gym_list/components/gym_profile.dart';
import 'package:wtf_gym_list/components/search_button.dart';
import 'package:wtf_gym_list/components/tag.dart';

import 'package:wtf_gym_list/home/home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel model = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dummy space
            SizedBox(
              height: 30.h,
            ),
            // Top Bar
            SizedBox(
              height: 50.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [CustomBackButton(), CityName()],
                  ),
                  CustomSearchButton(),
                ],
              ),
            ),
            // Divider after TopBar
            Divider(color: Colors.grey[200], thickness: 4.h),
            // Circular City Profiles
            SizedBox(
              height: 75.h,
              child: Row(
                children: [
                  CircularCityProfile(),
                ],
              ),
            ),
            // Divider after City Profiles
            Divider(
              color: Colors.grey[200],
              thickness: 2.h,
            ),
            // Popular Locations Tag
            Container(
              padding: EdgeInsets.all(8.h),
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Locations",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
            // Tags
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tag(),
                UnselectedTag("99 D Park Road"),
                UnselectedTag("A 452 Basement"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UnselectedTag("CLASSEOOM,"),
                UnselectedTag("Laxmi Nagar"),
                UnselectedTag("Main Market"),
              ],
            ),
            Row(
              children: [
                UnselectedTag("Patparganj Road"),
              ],
            ),
            // Divider after Tags
            Divider(
              color: Colors.grey[200],
              thickness: 5.h,
            ),
            // Nearby Pro Gyms Text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8.h),
                  child: Text(
                    "Nearby Pro Gyms",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.h),
                  child: Row(
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.filter_alt)
                    ],
                  ),
                ),
              ],
            ),
            // Nearby Pro Gyms Listing
            ListView.builder(
              itemCount: model.gymList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GymProfile(
                  gymName: model.gymList[index]["gymName"],
                  rating: model.gymList[index]["rating"],
                  address: model.gymList[index]["address"],
                  image: model.gymList[index]["image"],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
