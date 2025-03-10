import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';

class WPaymentSection extends StatefulWidget {
  const WPaymentSection({super.key});

  @override
  State<WPaymentSection> createState() => _WPaymentSectionState();
}

class _WPaymentSectionState extends State<WPaymentSection> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: opacity,
          curve: Curves.easeInOut,
          child: Text("Course Cost: 40,000 Rubles",
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeXL)),
        ),
        SizedBox(height: 20),
        AnimatedOpacity(
          duration: Duration(milliseconds: 700),
          opacity: opacity,
          curve: Curves.easeInOut,
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
                "✔ 20 Live Classes\n✔ Personalized Support\n✔ Course Materials & Exercises\n✔ Access to Q&A Sessions",
                textAlign: TextAlign.center,
                style: context.theme.textTheme.bodyLarge?.copyWith(
                  fontSize: PTheme.fontSizeX,
                )),
          ),
        ),
        SizedBox(height: 40),
        AnimatedOpacity(
          duration: Duration(milliseconds: 700),
          opacity: opacity,
          curve: Curves.easeInOut,
          child: Column(
            children: [
              AnimatedButton(title: "Enroll in the Course", color: Colors.orangeAccent),
              SizedBox(height: 20),
              AnimatedButton(title: "Inquire About Installments", color: Colors.blueAccent),
            ],
          ),
        ),
      ],
    );
  }
}

class AnimatedButton extends StatefulWidget {
  final String title;
  final Color color;

  const AnimatedButton({super.key, required this.title, required this.color});

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => scale = 0.9),
      onTapUp: (_) => setState(() => scale = 1.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: Matrix4.identity()..scale(scale),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: widget.color.withValues(alpha: 0.5),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.title,
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: PTheme.fontSizeX,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
