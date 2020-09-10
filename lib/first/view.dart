import 'package:first_flutter_demo/first/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(FirstState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("计数器"),
      // backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Text('${state.count}'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        dispatch(FirstActionCreator.onAddAction());
      },
      child: Icon(Icons.add),
    ),
  );
}
