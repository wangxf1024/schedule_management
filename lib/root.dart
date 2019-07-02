import 'package:fluttertoast/fluttertoast.dart';

import 'view/login/User.dart';
import 'view/splash/SplashRouter.dart';

class Root {
  //首屏展示的view
  static init() {
    return SplashRouter.initView(afterInit);
  }

  static afterInit(Object object) {
    User user = object as User;
    Fluttertoast.showToast(
        msg: user.name +" is login!!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1);
  }
}
