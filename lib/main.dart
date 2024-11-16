import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/core/themes/app_themes.dart';
import 'package:medsync/features/app_layout/presentation/view/app_layout_view.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      home: Builder(builder: (context) {
        SizeConfig.init(context);
        return const AppLayoutView();
      }),
    );
  }
}
