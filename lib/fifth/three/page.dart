import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class ThreePage extends Page<ThreeState, Map<String, dynamic>> {
  ThreePage()
      : super(
          initState: initState,
          view: buildView,
        );
}
