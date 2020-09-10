import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(EntryState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("入口页面"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildButton("第一个Demo，计数器", () {
            dispatch(EntryActionCreator.toFirstDemoAction());
          }),
          _buildButton("第二个Demo，页面数据传递", () {
            dispatch(EntryActionCreator.toSecondDemoAction());
          }),
          _buildButton("第三个Demo，组件", () {
            dispatch(EntryActionCreator.toThirdAction());
          }),
          _buildButton("第四个Demo，列表", () {
            dispatch(EntryActionCreator.toFourthAction());
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
