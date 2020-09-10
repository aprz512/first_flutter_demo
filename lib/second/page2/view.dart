import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Widget buildView(DetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("详情页面"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Column(
        children: [
          Text('${state.id}'),
          _buildButton('返回列表页面，并更新列表数据', () {
            dispatch(DetailActionCreator.onUpdateListAction());
          }),
        ],
      ),
    ),
  );
}

Widget _buildButton(String name, VoidCallback callback) {
  return InkWell(
    customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    splashColor: Colors.lightBlueAccent,
    highlightColor: Colors.lightBlueAccent,
    child: RaisedButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Text(name),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {
        ///监听点击事件
        callback();
      },
    ),
  );
}
