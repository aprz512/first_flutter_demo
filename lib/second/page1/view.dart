import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("列表页面"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Column(
        children: [
          Text(state.data),
          _buildButton('跳转到详情页面', () {
            dispatch(ListActionCreator.onToDetailAction(42));
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
