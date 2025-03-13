import 'dart:math';

import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WBenefitsSection extends StatelessWidget {
  const WBenefitsSection({super.key});

  final List<Map<String, dynamic>> _benefits = const [
    {
      'icon': Icons.timer_rounded,
      'title': '4-Month Results',
      'subtitle': 'Intensive learning approach for quick progress.',
      'color': Colors.blueAccent,
    },
    {
      'icon': Icons.person_pin_circle_rounded,
      'title': 'Personalized Plan',
      'subtitle': 'Tailored support for your learning goals.',
      'color': Colors.green,
    },
    {
      'icon': Icons.video_call_rounded,
      'title': 'One-on-One Lessons',
      'subtitle': 'Dedicated instructor sessions for improvement.',
      'color': Colors.orange,
    },
    {
      'icon': Icons.devices_rounded,
      'title': 'Interactive Platform',
      'subtitle': 'Learn anytime with our digital tools.',
      'color': Colors.purple,
    },
    {
      'icon': Icons.chat_bubble_outline_rounded,
      'title': 'Daily Chat Practice',
      'subtitle': 'Engage with instructors and students.',
      'color': Colors.redAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapY(PTheme.shortGapY),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Why Our Course is Right for You?',
            style: context.theme.textTheme.bodyLarge?.copyWith(
              fontSize: PTheme.fontSizeXL,
            ),
          ).gapLY,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop() ? MediaQuery.of(context).size.width * 0.19 : 0,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isMobile(context: context)
                  ? 1
                  : Responsive.isTablet(context: context)
                      ? 2
                      : 3,
              // crossAxisSpacing: setSizes(context, 40, 16, 10, false, true),
              // mainAxisSpacing: setSizes(context, 40, 16, 10, false, false),
              crossAxisSpacing: PTheme.spaceX,
              mainAxisSpacing: PTheme.spaceY,
              childAspectRatio: 1,
            ),
            itemCount: _benefits.length,
            itemBuilder: (context, index) {
              final benefit = _benefits[index];
              return _buildBenefitCard(benefit, index, context);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBenefitCard(Map<String, dynamic> benefit, int index, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        gradient: LinearGradient(
          colors: [benefit['color'].withOpacity(0.8), benefit['color'].withOpacity(0.4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              RotatingLoader(),
              Text(
                "${index + 1}",
                style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeL),
              ),
            ],
          ).gapY,
          Column(
            children: [
              Text(
                benefit['title'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 5.h),
              Text(
                benefit['subtitle'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.sp, color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RotatingLoader extends StatefulWidget {
  const RotatingLoader({super.key});

  @override
  State<RotatingLoader> createState() => _RotatingLoaderState();
}

class _RotatingLoaderState extends State<RotatingLoader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(); // Rotates infinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: CustomPaint(
            size: Size(60, 60), // Outer Size
            painter: ArcPainter(),
          ),
        );
      },
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 5; // Thickness of the arcs
    double radius = size.width / 2;
    double gapRadius = radius / 2; // Inner gap size
    Rect rect = Rect.fromCircle(center: Offset(radius, radius), radius: radius);

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Define colors
    List<Color> colors = [Colors.red, Color(0xFF0A1828), Color(0xFF178582), Color(0xFFBFA181)];

    for (int i = 0; i < 4; i++) {
      paint.color = colors[i];
      double startAngle = i * (pi / 2); // Each arc covers 90 degrees
      canvas.drawArc(rect, startAngle, pi / 2 - 0.1, false, paint); // 0.1 for spacing
    }

    // Draw a center circle to create the gap
    Paint gapPaint = Paint()..color = Colors.transparent;
    canvas.drawCircle(Offset(radius, radius), gapRadius, gapPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
