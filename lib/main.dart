import 'package:flutter/material.dart';
import 'package:flutter_plinko/routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.routes,
    ),
  );
}
