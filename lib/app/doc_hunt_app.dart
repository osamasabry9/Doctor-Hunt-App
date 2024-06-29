import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/local_storage/app_constants_keys.dart';
import '../core/routing/app_router.dart';
import '../core/routing/routes.dart';
import '../core/themes/colors.dart';

class DocHuntApp extends StatelessWidget {
  const DocHuntApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor Hunt',
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
      ),
    );
  }

  ThemeData themeData() => ThemeData(
        primaryColor: ColorsManager.mainBlue,
        scaffoldBackgroundColor: Colors.white,
      );
}
