import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomModelCard extends StatelessWidget {
  final String modelImagePath;
  final String modelName;
  final bool isSelected;
  final bool? isSVG; // New property
  final void Function()? onTap;

  const CustomModelCard({
    super.key,
    required this.modelImagePath,
    required this.modelName,
    required this.onTap,
    this.isSelected = false,
    this.isSVG = false, // Default to false
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: mq.height * 0.07,
          width: mq.width * 0.14,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: isSelected ? Color(0xff713CF4) : Colors.white, // Changes color if selected
            ),
            // borderRadius: BorderRadius.circular(mq.width * 0.06),
            shape: BoxShape.circle,
          ),
          child: Container(
            // height: mq.height * 0.05,
            // width: mq.width * 0.01,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(mq.width * 0.05),
              shape: BoxShape.circle,
            ),
            child: InkWell(
              onTap: onTap,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(mq.width * 0.05),
                child: isSVG == true
                    ? SvgPicture.asset(modelImagePath)
                    : Image.asset(
                        modelImagePath,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
        ),
        Text(
          modelName,
          style: context.theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
