import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/routing/app_router.dart';
import '../core/routing/routes.dart';

class DocHuntApp extends StatelessWidget {
  const DocHuntApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Doctor Hunt',
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: Routes.homeScreen,
      ),
    );
  }

  ThemeData themeData() => ThemeData();
}
