import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internative/routes/app_pages.dart';
import 'package:getx_internative/routes/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
    );
  }
}
