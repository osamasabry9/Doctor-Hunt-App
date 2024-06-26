import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctors_specialty_list_item.dart';


class DoctorsSpecialtyListView extends StatelessWidget {
  const DoctorsSpecialtyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: const DoctorsSpecialtyListItem(),
          );
        },
      ),
    );
  }
}
