import 'package:first_flutter_demo/fourth/adapter/adapter.dart';
import 'package:first_flutter_demo/fourth/adapter/state.dart';
import 'package:first_flutter_demo/fourth/reducer.dart';
import 'package:first_flutter_demo/fourth/view.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';

class FourthPage extends Page<ListState, Map<String, dynamic>> {
  FourthPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ListState>(
            adapter: NoneConn<ListState>() + ListItemAdapter(),
          ),
        );
}
