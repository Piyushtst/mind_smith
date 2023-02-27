import 'package:get/get.dart';
import 'package:mind_smith/app/binding/home_binding.dart';
import 'package:mind_smith/app/binding/login_binding.dart';
import 'package:mind_smith/app/binding/my_report_binding.dart';
import 'package:mind_smith/app/binding/profile_binding.dart';
import 'package:mind_smith/app/binding/splash_binding.dart';
import 'package:mind_smith/screens/apoinment/apoinment.dart';
import 'package:mind_smith/screens/auth/login_screen.dart';
import 'package:mind_smith/screens/home/home_screen.dart';
import 'package:mind_smith/screens/my_report/my_reports_screen.dart';
import 'package:mind_smith/screens/profile/profile_screen.dart';
import 'package:mind_smith/screens/splash_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;


  static final routes = [

    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),

    /*GetPage(
      name: _Paths.NAVIGATION,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),*/

    GetPage(
      name: _Paths.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.APOINMENT,
      page: () => const AponmentScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.MYREPORT,
      page: () => const NyReports(),
      binding: MyReportBinding(),
    ),

    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
  ];
}
