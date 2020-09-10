import 'package:fish_redux/fish_redux.dart';

enum FourthAction { fetchDataSuccess }

class FourthActionCreator {
  static Action onFetchDataSuccessAction(var list) {
    return Action(FourthAction.fetchDataSuccess, payload: list);
  }
}
