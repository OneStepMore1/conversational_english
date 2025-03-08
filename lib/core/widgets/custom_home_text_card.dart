import 'package:flutter/material.dart';

class CustomHomeTextCard extends StatelessWidget {
  final String titleText;
  final String descText;
  const CustomHomeTextCard(
      {super.key, required this.titleText, required this.descText});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: mq.width * 0.03),
      padding: EdgeInsets.symmetric(
          horizontal: mq.width * 0.03, vertical: mq.height * 0.01),
      height: mq.height * 0.13,
      width: mq.width,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF1EEFA)),
          borderRadius: BorderRadius.circular(mq.width * 0.02)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: mq.height * 0.015,
          ),
          Text(
            descText,
            style: TextStyle(fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
