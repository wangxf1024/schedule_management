//登陆路由控制器
import 'User.dart';
import 'login.dart';

class LoginRouter {
  static Function callBack;
  static initView(callback) {
    callBack = callback;
    return LoginView();
  }

  static loginIn(User user) {
    //TODO 登陆逻辑
     callBack(user);
  }
}
