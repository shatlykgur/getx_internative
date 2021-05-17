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

//Dart programlama dilini ve Flutter framework'unu kullandım
//Mobx State Management yöntemini kullandım
//dio Http paketini kullandım
//Spoonacular yemek api'sinden veri çekemedim ve başka yemek api'lerinden de
//Çalışıp çalışmadığını kontrol etmek için basit başlangıç api'yi kullandım
//3 Ekrandan oluşuyor
//Getx ve dio'yu ilk defa kullandım ve bu kadar yapabildim