import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

// component 与 page 的用法差不多
// 因为 component 继承的 page
// 可以理解为 View 与 ViewGroup 的关系
// component 创建出来后，可以在 page 里面使用
// component 的 state 需要从 page 里面传过来，使用 connector
class CardComponent extends Component<CardState> {
  CardComponent()
      : super(
          view: buildView,
        );
}
