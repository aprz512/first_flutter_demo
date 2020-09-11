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
          // 这里还可以传一些 middleWare，用来做 AOP，比如打印生命周期
          effectMiddleware: <EffectMiddleware<EntryState>>[
            pageLifecycle(),
          ],
        );
}

EffectMiddleware<EntryState> pageLifecycle() {
  return (
    AbstractLogic<dynamic> logic,
    Store<EntryState> store,
  ) {
    return (Effect<dynamic> effect) {
      return (Action action, Context<dynamic> ctx) {
        if (logic is Page<dynamic, dynamic> && action.type is Lifecycle) {
          print('${logic.runtimeType} ${action.type.toString()} ');
        }
        return effect?.call(action, ctx);
      };
    };
  };
}
