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

  gethoverbooleancategory({required bool values, required int hoverCurrentIndex}) {
    if (values == true) {
      onhovercategory = values;
      hoverindexcategory = hoverCurrentIndex;
    } else {
      onhovercategory = values;
      hoverindexcategory = -1;
    }

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
