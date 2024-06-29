import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/di.dart';
import 'app/doc_hunt_app.dart';
import 'core/local_storage/app_constants_keys.dart';
import 'core/local_storage/secure_storage_helper.dart';
import 'core/helper/extensions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(const DocHuntApp());
}

/// To check if user is logged in or not.
checkIfLoggedInUser() async {
  String? userToken =
      await SecureStorageHelper.getSecuredString(AppConstantsKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
