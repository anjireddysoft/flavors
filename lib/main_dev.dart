import 'package:flavour_test/app_config.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(appConfig: AppConfig(appName: "Flavor Dev", flavor: "Dev")));
}
