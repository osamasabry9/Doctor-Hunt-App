import 'package:flutter/material.dart';

import 'app/di.dart';
import 'app/doc_hunt_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(const DocHuntApp());
}
