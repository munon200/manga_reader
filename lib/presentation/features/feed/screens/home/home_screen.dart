import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/features/feed/screens/home/widgets/home_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: kBottomNavigationBarHeight * 1.5,
          width: double.maxFinite,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CustomPaint(
                painter: Cus(),
              ),
              Positioned(
                width: 40,
                height: 40,
                top: 10,
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Cus extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double height = size.height, width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.blue;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(width * 0.35, 0)
      ..conicTo(width * 0.35, height * 0.5, width * 0.5, height * 0.5, 5)
      ..conicTo(width * 0.65, height * 0.5, width * 0.65, 0, 5)
      ..lineTo(width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
