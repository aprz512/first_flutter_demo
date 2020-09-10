import 'package:first_flutter_demo/third/component2/component.dart';
import 'package:first_flutter_demo/third/component2/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'component/component.dart';
import 'component/state.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'state.dart' as third;
import 'view.dart';

class ThirdPage extends Page<ThirdState, Map<String, dynamic>> {
  ThirdPage()
      : super(
          initState: third.initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ThirdState>(
              adapter: null,
              slots: <String, Dependent<ThirdState>>{
                "card1": Card1Connector() + CardComponent(),
                "card2": Card2Connector() + CardComponent(),
                "header": HeaderConnector() + HeaderComponent()
              }),
          middleware: <Middleware<ThirdState>>[],
        );
}
