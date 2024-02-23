import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/di.dart';
import 'app/doc_hunt_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(const DocHuntApp());
}
