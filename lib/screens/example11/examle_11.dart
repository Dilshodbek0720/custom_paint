import 'dart:math';

import 'package:flutter/material.dart';

class Example11 extends StatefulWidget {
  const Example11({super.key});

  @override
  State<Example11> createState() => _Example11State();
}

class _Example11State extends State<Example11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uzbekistan"),),
      body: Center(
        child: Container(
          color: Color(0xFF009CFF).withOpacity(0.7),
          child: Stack(
            children: [
              CustomPaint(
                size: Size(340,200),
                painter: MyPainter(),
              ),
              Positioned(
                top: 46,
                left: 55,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 46,
                  left: 68,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 46,
                  left: 81,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 46,
                  left: 94,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 46,
                  left: 107,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 30,
                  left: 68,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 30,
                  left: 81,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 30,
                  left: 94,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 30,
                  left: 107,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 14,
                  left: 81,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 14,
                  left: 94,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
              Positioned(
                  top: 14,
                  left: 107,
                  child: CustomPaint(
                    size: Size(8,8),
                    painter: StarPainter(),
                  )
              ),
            ],
          )
        ),
      ),
    );
  }
}


class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4.0;

    canvas.drawLine(
      Offset(0, 99),//(100,100)
      Offset(340, 99),//(200,100)
      Paint()
        ..color = Colors.white
        ..strokeWidth = 66,
    );
    canvas.drawLine(
      Offset(0, 167),//(100,100)
      Offset(340, 167),//(200,100)
      Paint()
      ..color = Colors.green
      ..strokeWidth = 66,
    );
    canvas.drawLine(
      Offset(0, 66.7),//(100,100)
      Offset(340, 66.7),//(200,100)
      paint,
    );
    canvas.drawLine(
      Offset(0, 133.3),//(100,100)
      Offset(340, 133.3),//(200,100)
      paint,
    );

    final moon = Path();
    moon.moveTo(40, 54);
    moon.arcToPoint(Offset(50,13), radius: Radius.circular(5));
    moon.arcToPoint(Offset(50,54), radius: Radius.circular(15), clockwise: false);
    canvas.drawPath(moon, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;
    int numOfPoints = 5;

    final List<Offset> points = [];

    for (int i = 0; i < numOfPoints * 2; i++) {
      double angle = 2 * pi / (numOfPoints * 2) * i-pi/10;
      double radiusFactor = i.isEven ? 1.0 : 0.5;
      double x = centerX + radius * radiusFactor * cos(angle);
      double y = centerY + radius * radiusFactor * sin(angle);
      points.add(Offset(x, y));
    }

    final Path path = Path()..addPolygon(points, true);

    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}