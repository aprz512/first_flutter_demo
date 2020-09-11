import 'package:first_flutter_demo/sixth/action.dart';
import 'package:first_flutter_demo/sixth/store.dart';
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
          _buildButton("第五个Demo，广播", () {
            dispatch(EntryActionCreator.toFifthAction());
          }),
          _buildButton("先点我，改变主题颜色，再点第六个demo", () {
            // 要使用 GlobalStore 来 dispatch
            // page 里面也是使用的 store，在page里面调用 dispatch 的时候，就是调用到的 page 里面的 store 的 dispatch
            GlobalStore.store.dispatch(GlobalActionCreator.onchangeThemeColor());
          }),
          _buildButton("第六个Demo，全局状态", () {
            dispatch(EntryActionCreator.toSixthDemo());
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
