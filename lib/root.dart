import 'view/login/LoginRouter.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'view/login/User.dart';

class Root {
  //首屏展示的view
  static init() {
    return LoginRouter.initView(afterInit);
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
