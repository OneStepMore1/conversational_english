import 'package:conversational_english/util/constants/colors.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';

class WCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  const WCard({super.key, required this.icon, required this.title, required this.description});

  @override
  State<WCard> createState() => _WCardState();
}

class _WCardState extends State<WCard> {
  final ValueNotifier<bool> _isHovered = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _isHovered.value = true,
      onExit: (_) => _isHovered.value = false,
      child: ValueListenableBuilder<bool>(
        valueListenable: _isHovered,
        builder: (_, value, __) {
          return Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              transform: (_isHovered.value) ? (Matrix4.identity()..scale(.9)) : Matrix4.identity(),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _isHovered.value
                    ? PColors.appBarColor.withValues(alpha: 0.8)
                    : context.theme.textTheme.displayLarge?.color,
                borderRadius: BorderRadius.circular(PTheme.boxRadius),
                boxShadow: [
                  BoxShadow(
                    color: _isHovered.value ? Colors.black26 : Colors.transparent,
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    size: 36,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.title,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: _isHovered.value ? PTheme.fontSizeL : PTheme.fontSizeX),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.description,
                    textAlign: TextAlign.center,
                    style: context.theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
