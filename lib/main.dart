import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kiwi/kiwi.dart';
import 'package:mind_smith/app/routes/app_pages.dart';
import 'screens/splash_screen.dart';

KiwiContainer? app;
GetStorage? box;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
 // runApp(const MyApp());
  runApp( GetMaterialApp(
    //home: MyApp(),
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  ));
 /* WidgetsFlutterBinding.ensureInitialized();
  GetMaterialApp(
    //title: "Application",
    theme: ThemeData(
      //fontFamily: 'Satoshi',
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  );*/
}


/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const SplashScreen(),
    );
  }
}*/


