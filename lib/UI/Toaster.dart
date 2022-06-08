import 'package:fluttertoast/fluttertoast.dart';

class Toaster {
  Future showToast(String message) async {
    await Fluttertoast.cancel();

    Fluttertoast.showToast(msg: message, fontSize: 18);
  }
}