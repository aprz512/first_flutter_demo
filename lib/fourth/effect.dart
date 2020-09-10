import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart' hide ItemBean;

import 'action.dart';
import 'adapter/state.dart';
import 'bean/item_bean.dart';
import 'item/state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ///进入页面就执行的初始化操作
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ListState> ctx) async {
  String apiUrl = "https://www.wanandroid.com/project/list/1/json";
  Response response = await Dio().get(apiUrl);
  ItemBean itemBean = ItemBean.fromJson(json.decode(response.toString()));
  List<Datas> itemDetails = itemBean.data.datas;

  ///构建符合要求的列表数据源
  List<ItemState> items = List.generate(itemDetails.length, (index) {
    return ItemState(itemDetail: itemDetails[index]);
  });
  ctx.dispatch(FourthActionCreator.onFetchDataSuccessAction(items));
}
