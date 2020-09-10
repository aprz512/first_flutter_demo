import 'package:first_flutter_demo/fourth/bean/item_bean.dart';
import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {
  Datas itemDetail;

  ItemState({this.itemDetail});

  @override
  ItemState clone() {
    return ItemState()..itemDetail = itemDetail;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
