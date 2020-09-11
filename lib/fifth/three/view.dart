import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ThreeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Three"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Column(
        children: [
          Text("三级页面"),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text('发送广播'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              viewService.broadcast(ThreeActionCreator.onSendBroadcastAction());
            },
          ),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text('触发二级页面，让其发送广播到三级页面'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              viewService.broadcast(ThreeActionCreator.onSendToPageTwo());
            },
          ),
        ],
      ),
    ),
  );
}
