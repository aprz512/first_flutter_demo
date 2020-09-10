import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(CardState state, Dispatch dispatch, ViewService viewService) {
  return Card(
    elevation: 15.0, //设置阴影
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))), //设置圆角
    child: ListTile(
      title: Text('这是卡片组件${state.index}'),
    ),
  );
}
