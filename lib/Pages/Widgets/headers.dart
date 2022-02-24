import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  const Contenedor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderPainter2()),
    );
  }
}

class _HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 50,
    );

    const textSpan = TextSpan(
      text: "Hola canvas",
      style: textStyle,
    );
    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final paint = Paint();
    paint.color = Colors.redAccent;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = Path();
    path.moveTo(0, size.height * .5);
    path.lineTo(size.width, size.height * .3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    final x = (size.width - texPainter.width) * .5;
    final y = (size.height - texPainter.height) * .25;

    final of = Offset(x, y);

    canvas.drawPath(path, paint);
    texPainter.paint(canvas, of);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}

class _HeaderPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.orangeAccent,
      fontSize: 50,
    );

    const textSpan = TextSpan(
      text: "Texto",
      style: textStyle,
    );
    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final paint = Paint();
    paint.color = Colors.redAccent;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 10;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

    path.moveTo(size.width, size.height);
    path.lineTo(0, size.height * 0);
    canvas.drawPath(path, paint);
    // para el texto es X and Y
    final x = (size.width - texPainter.width) * .5;
    final y = (size.height - texPainter.height) * .15;

    final of = Offset(x, y);

    // canvas.drawPath(path2, paint2);
    canvas.drawPath(path, paint);

    texPainter.paint(canvas, of);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class _HeaderPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 50,
    );

    const textSpan = TextSpan(
      text: "Texto",
      style: textStyle,
    );
    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final paint = Paint();
    paint.color = Colors.yellowAccent;
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(0, size.height);

    final x = (size.width - texPainter.width) * .5;
    final y = (size.height - texPainter.height) * .8;

    final of = Offset(x, y);

    // canvas.drawPath(path2, paint2);
    canvas.drawPath(path, paint);

    texPainter.paint(canvas, of);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
