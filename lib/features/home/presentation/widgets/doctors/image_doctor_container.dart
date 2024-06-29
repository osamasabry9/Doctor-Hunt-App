import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ImageDoctorContainer extends StatelessWidget {
  const ImageDoctorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
         imageUrl:
            'https://t4.ftcdn.net/jpg/03/20/52/31/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.jpg',
         progressIndicatorBuilder: (context, url, downloadProgress) {
           return Shimmer.fromColors(
             baseColor: ColorsManager.lightGray,
             highlightColor: Colors.white,
             child: Container(
               width: 110.w,
               height: 120.h,
               decoration: BoxDecoration(
                 shape: BoxShape.rectangle,
                 borderRadius: BorderRadius.circular(12.0),
                 color: Colors.white,
               ),
             ),
           );
         },
         imageBuilder: (context, imageProvider) => Container(
           width: 110.w,
           height: 120.h,
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.circular(12.0),
             image: DecorationImage(
               image: imageProvider,
               fit: BoxFit.cover,
             ),
           ),
         ),
       );
  }
}
