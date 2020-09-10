import 'package:first_flutter_demo/fourth/adapter/state.dart';
import 'package:first_flutter_demo/fourth/item/component.dart';
import 'package:fish_redux/fish_redux.dart';

class ListItemAdapter extends SourceFlowAdapter<ListState> {

  ListItemAdapter()
      : super(
          pool: <String, Component<Object>>{
            ///定义item的样式
            'item': ItemComponent(),
          },
        );
}
