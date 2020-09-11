import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ThemeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: state.themeColor,
      title: Text("主题页面"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(),
  );
}
