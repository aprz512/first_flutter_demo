import 'package:fish_redux/fish_redux.dart';

enum EntryAction { firstDemo, secondDemo, thirdDemo, fourthDemo, fifthDemo, sixthDemo }

class EntryActionCreator {
  static Action toFirstDemoAction() {
    return const Action(EntryAction.firstDemo);
  }

  static Action toSecondDemoAction() {
    return const Action(EntryAction.secondDemo);
  }

  static Action toThirdAction() {
    // const 修饰，可以理解为单利（但是又不是）
    return const Action(EntryAction.thirdDemo);
  }

  static Action toFourthAction() {
    // const 修饰，可以理解为单利（但是又不是）
    return const Action(EntryAction.fourthDemo);
  }

  static Action toFifthAction() {
    // const 修饰，可以理解为单利（但是又不是）
    return const Action(EntryAction.fifthDemo);
  }

  static Action toSixthDemo() {
    // const 修饰，可以理解为单利（但是又不是）
    return const Action(EntryAction.sixthDemo);
  }
}
