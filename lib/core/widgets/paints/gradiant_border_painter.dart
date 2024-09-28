import 'package:flutter/material.dart';

class GradientBorderPainter extends CustomPainter {
  final double strokeWidth;
  final Gradient gradient;
  final double radius;
  final Color innerColor;

  GradientBorderPainter({
    required this.strokeWidth,
    required this.gradient,
    required this.radius,
    required this.innerColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final outerRRect = RRect.fromRectAndRadius(rect, Radius.circular(radius));

    // Create a paint object for the gradient border
    final borderPaint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    // Draw the gradient border
    canvas.drawRRect(outerRRect, borderPaint);

    // Create a rect for the inner content, inset by the border's width
    final innerRect = Rect.fromLTWH(
      strokeWidth / 2, // inset to account for border
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );
    final innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth / 2));

    // Paint the inner content with the background color
    final innerPaint = Paint()..color = innerColor;

    // Draw the inner content
    canvas.drawRRect(innerRRect, innerPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
