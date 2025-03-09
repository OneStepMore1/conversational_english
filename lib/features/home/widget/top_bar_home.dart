import 'package:conversational_english/core/controllers/theme_controller.dart';
import 'package:conversational_english/features/home/controller/home_controller.dart';
import 'package:conversational_english/features/home/models/top_bar_model.dart';
import 'package:flutter/material.dart';
import 'package:power_state/power_state.dart';

class TopBar extends StatelessWidget {
  final int? indexx;
  final ScrollController scrollController;

  const TopBar({super.key, required this.indexx, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PowerBuilder<CHome>(
            builder: ((homecontroller) {
              return MouseRegion(
                onHover: (v) {},
                child: InkWell(
                  onTap: () {
                    homecontroller.getCurrentIndex(inde: indexx!);

                    // Use the animateTo method of ScrollController to scroll to the specific index
                    scrollController.animateTo(
                      scrollController.position.maxScrollExtent *
                          (indexx! / homeitems.length), // Adjust based on the index
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                  onHover: (value) {
                    homecontroller.gethoverbooleancategory(hoverCurrentIndex: indexx!, values: value);
                  },
                  child: PowerBuilder<CTheme>(
                    builder: ((themecontroller) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: homecontroller.currentIndex == indexx!
                                    ? themecontroller.currentIndex == 1
                                        ? Colors.white
                                        : Colors.black
                                    : Colors.transparent),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: Text(
                            homeitems[indexx!].title!,
                            style: TextStyle(
                                fontSize: 20,
                                color: homecontroller.hoverindexcategory == indexx!
                                    ? themecontroller.currentIndex == 1
                                        ? Colors.yellow
                                        : Colors.blue
                                    : themecontroller.currentIndex == 1
                                        ? Colors.white
                                        : Colors.black),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
