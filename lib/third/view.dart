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
        viewService.buildComponent('header'),
        Divider(
          height: 16,
        ),
        Card(
          elevation: 15.0, //设置阴影
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0))), //设置圆角
          child: Text('这里是Page，组件里面的数据为：${state.headerState.count}'),
        ),
        Divider(
          height: 16,
        ),
        viewService.buildComponent('card1'),
        viewService.buildComponent('card2'),
      ],
    )),
  );
}
