import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Week4'),
        ),
        body: Center(
          child: CustomPaint(
            size: Size(150, 250),
            painter: MyCustomShape(),
          ),
        ),
      ),
    );
  }
}

class MyCustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintFill = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final paintStroke = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    // 첫 번째 도형 경로
    Path path1 = Path();
    path1.moveTo(20, 0);
    Rect rightRect1 = Rect.fromLTWH(size.width - 40, 0, 40, 50);
    path1.arcTo(rightRect1, -pi / 2, pi, false);
    path1.lineTo(20, 50);
    Rect leftRect1 = Rect.fromLTWH(0, 0, 40, 50);
    path1.arcTo(leftRect1, pi / 2, -pi, false);
    path1.close();

    canvas.drawPath(path1, paintFill);

    // 두 번째 도형 경로
    Path path2 = Path();
    path2.moveTo(100, 150);
    Rect leftRect2 = Rect.fromLTWH(0, 100, 40, 50);
    path2.arcTo(leftRect2, pi / 2, -pi, false);
    path2.lineTo(size.width - 40, 100);
    Rect rightRect2 = Rect.fromLTWH(size.width - 40, 100, 40, 50);
    path2.arcTo(rightRect2, -pi / 2, -pi, false);
    path2.lineTo(40, 150);
    path2.close();

    canvas.drawPath(path2, paintFill);

    // 세 번째 도형 경로
    Path path3 = Path();
    path3.moveTo(20, 200);
    Rect rightRect3 = Rect.fromLTWH(size.width - 40, 200, 40, 50);
    path3.arcTo(rightRect3, -pi / 2, pi, false);
    path3.lineTo(20, 250);
    Rect leftRect3 = Rect.fromLTWH(0, 200, 40, 50);
    path3.arcTo(leftRect3, pi / 2, pi, false);
    path3.close();

    canvas.drawPath(path3, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}