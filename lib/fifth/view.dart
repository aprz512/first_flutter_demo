import 'package:first_flutter_demo/fifth/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(OneState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("One"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Column(
        children: [
          Text("一级页面"),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text('跳转下一级页面'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              dispatch(OneActionCreator.onNextPageAction());
            },
          ),
        ],
      ),
    ),
  );
}
