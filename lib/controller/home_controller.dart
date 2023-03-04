import 'package:design_pacm/controller/controller.dart';

class HomeController extends BaseController{

  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  @override
  void errorHandler(e) {
    // TODO: implement errorHandler
  }

}