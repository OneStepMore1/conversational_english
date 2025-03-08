import 'package:conversational_english/core/widgets/scrollable_positioned_list/src/item_positions_listener.dart';
import 'package:conversational_english/core/widgets/scrollable_positioned_list/src/scrollable_positioned_list.dart';
import 'package:power_state/power_state.dart';

class CHome extends PowerController {
  int currentIndex = 0;
  bool onhoverforsocialitems = false;
  bool onhovercategory = false;
  int? hoverindexforsocialitems;
  int? hoverindexcategory = 0;
  bool texthover = false;
  late ItemScrollController itemScrollController = ItemScrollController();
  bool lastIndexFound = false;
  gettinglastIndexofhomeitem({value}) {
    lastIndexFound = value;
    notifyListeners();
  }

  late ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
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
