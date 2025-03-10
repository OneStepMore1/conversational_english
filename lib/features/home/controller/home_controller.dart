import 'package:power_state/power_state.dart';

class CHome extends PowerController {
  int currentIndex = 0;
  bool onhoverforsocialitems = false;
  bool onhovercategory = false;
  int? hoverindexforsocialitems;
  int? hoverindexcategory = -1;
  bool texthover = false;
  bool lastIndexFound = false;
  gettinglastIndexofhomeitem({value}) {
    lastIndexFound = value;
    notify();
  }

  getTextHover({bool? value}) {
    texthover = value!;
    notify();
  }

  gethoverbooleancategory({required bool values, required int hoverCurrentIndex}) {
    if (values == true) {
      onhovercategory = values;
      hoverindexcategory = hoverCurrentIndex;
    } else {
      onhovercategory = values;
      hoverindexcategory = -1;
    }

    notify();
  }

  gethoverbooleanforsocial({values, hoverCurrentIndex}) {
    onhoverforsocialitems = values;
    hoverindexforsocialitems = hoverCurrentIndex;
    notify();
  }

  getCurrentIndex({int? inde}) {
    currentIndex = inde!;
    notify();
  }

  notify() {
    notifyListeners();
  }
}
