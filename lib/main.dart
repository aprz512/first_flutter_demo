import 'package:first_flutter_demo/fourth/page.dart';
import 'package:first_flutter_demo/page_route_name.dart';
import 'package:first_flutter_demo/second/page1/page.dart';
import 'package:first_flutter_demo/second/page2/page.dart';
import 'package:first_flutter_demo/third/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;

import 'entry/page.dart';
import 'first/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        entryPage: EntryPage(),
        firstPage: FirstPage(),
        secondListPage: ListPage(),
        secondDetailPage: DetailPage(),
        thirdPage: ThirdPage(),
        fourthPage: FourthPage(),
      },
    );

    return MaterialApp(
      title: 'First Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) {
          return routes.buildPage(settings.name, settings.arguments);
        });
      },
      onUnknownRoute: (setting) {
        // 未知页面
        return null;
      },
      home: routes.buildPage(entryPage, null),
    );
  }
}
