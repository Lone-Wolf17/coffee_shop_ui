import 'package:coffee_shop_ui/pages/landing_page.dart';
import 'package:coffee_shop_ui/pages/shop_page.dart';
import 'package:coffee_shop_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      builder: () => MaterialApp(
          title: 'Flutter Coffee Shop UI',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: kFadedScaffoldColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              textTheme: GoogleFonts.poppinsTextTheme()),
          initialRoute: "/",
          onGenerateRoute: _onGenerateRoute,
          home: LandingPage()),
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  var routePage;
  switch (settings.name) {
    case "/":
      routePage = LandingPage();
      break;
    case "/shop":
      routePage = ShopPage();
      break;
    default:
      routePage = LandingPage();
      break;
  }

  return MaterialPageRoute(builder: (BuildContext context) => routePage);
}
