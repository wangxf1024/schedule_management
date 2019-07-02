//路由控制器
import 'splash.dart';

class SplashRouter {
  static Function callBack;

  static initView(callback) {
    callBack = callback;
    return SplashView();
  }

  nextStep() {
    if (callBack != null) {
      callBack();
    }
  }
}
