import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class TwoPage extends Page<TwoState, Map<String, dynamic>> {
  TwoPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          view: buildView,
        );
}
