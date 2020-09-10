import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ThirdState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("组件"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        viewService.buildComponent('card1'),
        viewService.buildComponent('card2'),
      ],
    )),
  );
}
