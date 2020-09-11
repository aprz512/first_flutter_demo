import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class ThemePage extends Page<ThemeState, Map<String, dynamic>> {
  ThemePage()
      : super(
          initState: initState,
          view: buildView,
        );
}
