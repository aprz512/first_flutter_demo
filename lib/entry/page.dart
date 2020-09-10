import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class EntryPage extends Page<EntryState, Map<String, dynamic>> {
  EntryPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<EntryState>(adapter: null, slots: <String, Dependent<EntryState>>{}),
          middleware: <Middleware<EntryState>>[],
        );
}
