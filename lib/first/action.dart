import 'package:fish_redux/fish_redux.dart';

enum FirstAction { add }

class FirstActionCreator {
  static Action onAddAction() {
    return const Action(FirstAction.add);
  }
}
