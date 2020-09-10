import 'package:first_flutter_demo/fourth/item/state.dart';
import 'package:fish_redux/fish_redux.dart';

class ListState extends MutableSource implements Cloneable<ListState> {
  ///这地方一定要注意,List里面的泛型,需要定义为ItemState
  ///怎么更新列表数据,只需要更新这个items里面的数据,列表数据就会相应更新
  List<ItemState> items;

  @override
  ListState clone() {
    return ListState()..items = items;
  }

  ///使用上面定义的List,继承MutableSource,就把列表和item绑定起来了
  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => 'item';

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
