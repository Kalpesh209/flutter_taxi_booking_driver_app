import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

 class Cross extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CrossState();
}

class CrossState extends State<Cross> with SingleTickerProviderStateMixin {
  double _fraction = 0.0;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    var controller = AnimationController(
        duration: Duration(seconds: 3), vsync: this);

    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          _fraction = animation.value;
        });
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CrossPainter(_fraction));
  }

  @override
  void dispose() {
    super.dispose();

  }
    
 }

class CrossPainter extends CustomPainter {
  Paint _paint;
  double _fraction;

  CrossPainter(this._fraction) {
    _paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
     double leftLineFraction, rightLineFraction;

    if (_fraction < .5) {
      leftLineFraction = _fraction / .5;
      rightLineFraction = 0.0;
    }else{
      leftLineFraction = 1.0;
      rightLineFraction = (_fraction - .5 ) /.5;
    }
     canvas.drawLine(Offset(0.0, 0.0),
        Offset(size.width * leftLineFraction, 0.0), _paint);
    }

  @override
  bool shouldRepaint(CrossPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}