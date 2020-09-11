import 'package:fish_redux/fish_redux.dart';

// 广播只能发送给 page，而且是父 page
// 比如 pageA，打开了 pageB，pageB 打开了 pageC
// pageA 是 pageB 的父页面，pageB 是 pageC 的父页面
// 广播可以向上传递，但是没法向下传递，比如到了 pageC，pageB 的广播就没法传到 pageC了
// 原因是： DispatchBusDefault 只保存了 parent
enum ThreeAction { sendBroadcast, sendToPageTwo }

class ThreeActionCreator {
  static Action onSendBroadcastAction() {
    return const Action(ThreeAction.sendBroadcast);
  }

  static Action onSendToPageTwo() {
    return const Action(ThreeAction.sendToPageTwo);
  }
}
