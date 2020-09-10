import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    HeaderState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Card(
      elevation: 15.0, //设置阴影
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0))), //设置圆角

      child: Column(
        children: [
          Text('我是一个组件'),
          Text('当前 state 的数据为：${state.count}'),
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            child: FlatButton(
              onPressed: () {
                dispatch(HeaderActionCreator.onAddAction());
              },
              child: Text('点我，让组件数据加一'),
            ),
          )
        ],
      ),
    ),
  );
}
