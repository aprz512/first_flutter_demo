import 'package:first_flutter_demo/fourth/adapter/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("列表"),
      // backgroundColor: state.store.themeColor,
    ),
    body: _buildBody(state, dispatch, viewService),
  );
}

Widget _buildBody(ListState state, dispatch, ViewService viewService) {
  if (state.items == null) {
    return Center(
      child: CircularProgressIndicator(),
    );
  } else {
    final ListAdapter adapter = viewService.buildAdapter();
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemBuilder: adapter.itemBuilder,
                  itemCount: adapter.itemCount))
        ],
      ),
    );
  }
}
