import 'package:first_flutter_demo/fourth/item/reducer.dart';
import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class ItemComponent extends Component<ItemState> {
  ItemComponent()
      : super(
          view: buildView,
          reducer: buildReducer(),
          dependencies: Dependencies<ItemState>(
              adapter: null, slots: <String, Dependent<ItemState>>{}),
        );
}
