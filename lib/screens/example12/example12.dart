import 'dart:math';

import 'package:flutter/material.dart';

class Example12 extends StatefulWidget {
  const Example12({Key? key}) : super(key: key);

  @override
  State<Example12> createState() => _Example12State();
}

class _Example12State extends State<Example12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Smiles"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
            child: CustomPaint(
              size: const Size(300, 300),
              painter: BadSmilePainter(sweepAngle: 2*pi),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
            child: CustomPaint(
              size: const Size(300, 300),
              painter: MiddleSmilePainter(sweepAngle: 2*pi),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
            child: CustomPaint(
              size: const Size(300, 300),
              painter: VeryNicePainter(sweepAngle: 2*pi),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
            child: CustomPaint(
              size: const Size(300, 300),
              painter: NicePainter(sweepAngle: 2*pi),
            ),
          ),
        ],
      ),
    );
  }
}


class VeryBadPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}

class BadSmilePainter extends CustomPainter{
  BadSmilePainter({required this.sweepAngle});

  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    Rect rect = const Offset(50, 50) & const Size(200, 200);
    const startAngle = 0.0;
    // const sweepAngle = sweepAngle;
    const useCenter = true;
    final paint = Paint()
      ..color = Colors.brown.withOpacity(0.7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10
      ..color = Colors.brown.withOpacity(0.7)
    ;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);

    canvas.drawArc(
      Rect.fromCenter(center: Offset(center.dx - radius / 3+8, center.dy - radius / 3), width: radius*2/7, height: radius/4),
      pi/10,
      2*pi/5,
      false,
      smilePaint,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(center.dx + radius / 3, center.dy - radius / 3), width: radius*2/7, height: radius/4),
      pi/2-pi/40,
      2*pi/5,
      false,
      smilePaint,
    );

    canvas.drawArc(
      Rect.fromCenter(center: Offset(150,200), width: radius*3/5, height: radius*8/15),
      pi/10+pi,
      pi*4/5,
      false,
      smilePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class MiddleSmilePainter extends CustomPainter{
  MiddleSmilePainter({required this.sweepAngle});

  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    Rect rect = const Offset(50, 50) & const Size(200, 200);
    const startAngle = 0.0;
    // const sweepAngle = sweepAngle;
    const useCenter = true;
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square
      ..strokeWidth = 14
      ..color = Colors.yellow
    ;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);

    canvas.drawCircle(
        Offset(center.dx - radius / 4+7, center.dy - radius / 4), 10, Paint()..color = Colors.yellow);
    canvas.drawCircle(
        Offset(center.dx + radius / 4, center.dy - radius / 4), 10, Paint()..color = Colors.yellow);
    canvas.drawArc(
      Rect.fromCenter(center: Offset(150, 200), width: radius*3/5, height: radius*6/15),
      pi+pi/4,
      pi/2,
      false,
      smilePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class NicePainter extends CustomPainter{
  NicePainter({required this.sweepAngle});

  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    Rect rect = const Offset(50, 50) & const Size(200, 200);
    const startAngle = 0.0;
    // const sweepAngle = sweepAngle;
    const useCenter = true;
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square
      ..strokeWidth = 10
      ..color = Colors.blue
    ;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);

    canvas.drawCircle(
        Offset(center.dx - radius / 5, center.dy - radius / 5), 10, Paint()..color = Colors.blue);
    canvas.drawCircle(
        Offset(center.dx + radius / 5, center.dy - radius / 5), 10, Paint()..color = Colors.blue);
    canvas.drawLine(
      Offset(110, 180),//(100,100)
      Offset(185, 180),//(200,100)
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}



class VeryNicePainter extends CustomPainter {
  VeryNicePainter({required this.sweepAngle});

  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    Rect rect = const Offset(50, 50) & const Size(200, 200);
    const startAngle = 0.0;
    // const sweepAngle = sweepAngle;
    const useCenter = true;
    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square
      ..strokeWidth = 10
    ..color = Colors.green
    ;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);

    canvas.drawCircle(
        Offset(center.dx - radius / 4, center.dy - radius / 4), 13, Paint()..color = Colors.green);
    canvas.drawCircle(
        Offset(center.dx + radius / 4, center.dy - radius / 4), 13, Paint()..color = Colors.green);
    canvas.drawArc(
      Rect.fromCenter(center: center, width: radius*3/5, height: radius*8/15),
      pi/10,
      pi*4/5,
      false,
      smilePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
