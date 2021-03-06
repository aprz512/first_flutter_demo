import 'package:first_flutter_demo/fifth/page.dart';
import 'package:first_flutter_demo/fifth/three/page.dart';
import 'package:first_flutter_demo/fifth/two/page.dart';
import 'package:first_flutter_demo/fourth/page.dart';
import 'package:first_flutter_demo/page_route_name.dart';
import 'package:first_flutter_demo/second/page1/page.dart';
import 'package:first_flutter_demo/second/page2/page.dart';
import 'package:first_flutter_demo/sixth/state.dart';
import 'package:first_flutter_demo/sixth/theme/page.dart';
import 'package:first_flutter_demo/third/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:oktoast/oktoast.dart';

import 'entry/page.dart';
import 'first/page.dart';
import 'sixth/store.dart';

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
          fifthOnePage: OnePage(),
          fifthTwoPage: TwoPage(),
          fifthThreePage: ThreePage(),
          sixthPage: ThemePage(),
        },
        visitor: (String path, Page<Object, dynamic> page) {
          /// 只有特定的范围的 Page 才需要建立和 AppStore 的连接关系
          /// 满足 Page<T> ，T 是 GlobalBaseState 的子类
          if (page.isTypeof<GlobalBaseState>()) {
            /// 建立 AppStore 驱动 PageStore 的单向数据连接
            /// 1. 参数1 AppStore
            /// 2. 参数2 当 AppStore.state 变化时, PageStore.state 该如何变化
            page.connectExtraStore<GlobalState>(GlobalStore.store, (Object pageState, GlobalState appState) {
              final GlobalBaseState p = pageState;
              if (p.themeColor != appState.themeColor) {
                if (pageState is Cloneable) {
                  final Object copy = pageState.clone();
                  final GlobalBaseState newState = copy;
                  newState.themeColor = appState.themeColor;
                  return newState;
                }
              }
              return pageState;
            });
          }
        });

    return OKToast(
      //2. wrap your app with OKToast
      textStyle: TextStyle(fontSize: 19.0, color: Colors.white),
      backgroundColor: Colors.grey,
      radius: 10.0,
      child: MaterialApp(
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
      ),
      animationCurve: Curves.easeIn,
      animationBuilder: Miui10AnimBuilder(),
      animationDuration: Duration(milliseconds: 200),
      duration: Duration(seconds: 3),
    );
  }
}
