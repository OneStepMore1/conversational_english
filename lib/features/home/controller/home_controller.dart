import 'package:power_state/power_state.dart';

class CHome extends PowerController {
  int currentIndex = 0;
  bool onhoverforsocialitems = false;
  bool onhovercategory = false;
  int? hoverindexforsocialitems;
  int? hoverindexcategory = 0;
  bool texthover = false;
  bool lastIndexFound = false;
  gettinglastIndexofhomeitem({value}) {
    lastIndexFound = value;
    notifyListeners();
  }

  getTextHover({bool? value}) {
    texthover = value!;
    notifyListeners();
  }

  gethoverbooleancategory({values, hoverCurrentIndex}) {
    onhovercategory = values;
    hoverindexcategory = hoverCurrentIndex;
    notifyListeners();
  }

  gethoverbooleanforsocial({values, hoverCurrentIndex}) {
    onhoverforsocialitems = values;
    hoverindexforsocialitems = hoverCurrentIndex;
    notifyListeners();
  }

  getCurrentIndex({int? inde}) {
    currentIndex = inde!;
    notifyListeners();
  }
}
