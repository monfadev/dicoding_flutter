import 'package:flutter/material.dart';
import 'package:myproject_dicoding_submission_restaurantapp/models/models.dart';

import 'pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: MainPage.routeMainPage,
      routes: {
        MainPage.routeMainPage: (context) => MainPage(),
        DetailPage.routeDetailPage: (context) => DetailPage(
              restaurantsDetailPage:
                  ModalRoute.of(context)?.settings.arguments as RestaurantModel,
            ),
      },
    );
  }
}
