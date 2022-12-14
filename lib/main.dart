import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_ass_provider/pages/home_page.dart';
import 'package:flutter_ass_provider/provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ass_provider/pages/add_counter_page.dart';

void main() {
  runApp(const MyApp());
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider()),
    ],
  );
}

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    path: "/add",
    builder: (context, state) => AddCounterPage(),
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      routerConfig: router,
    );
  }
}
