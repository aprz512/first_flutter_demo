import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FourthPage extends Page<FourthState, Map<String, dynamic>> {
  FourthPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FourthState>(
                adapter: null,
                slots: <String, Dependent<FourthState>>{
                }),
            middleware: <Middleware<FourthState>>[
            ],);

}
