import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  const Contenedor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderPainter5()),
    );
  }
}

class _HeaderPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 50,
    );

    const textSpan = TextSpan(
      text: "1",
      style: textStyle,
    );
    const textSpan2 = TextSpan(
      text: "2",
      style: textStyle,
    );
    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    final texPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );
    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    texPainter2.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;
    paint.color = Colors.redAccent;

    final path = Path();
    path.lineTo(size.width * .25, size.height * .25);
    path.lineTo(size.height * .25, 0);
    path.lineTo(size.width * .75, size.height * .25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
    final x = (size.width - texPainter.width) * .22;
    final y = (size.height - texPainter.height) * .08;
    final of = Offset(x, y);
    texPainter.paint(canvas, of);

    final x2 = (size.width - texPainter.width) * .76;
    final y2 = (size.height - texPainter.height) * .08;
    final of1 = Offset(x2, y2);

    texPainter2.paint(canvas, of1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
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
    path.moveTo(size.width, size.height);
    path.lineTo(0, size.height * 0);
    canvas.drawPath(path, paint);

    final x = (size.width - texPainter.width) * .5;
    final y = (size.height - texPainter.height) * .15;

    final of = Offset(x, y);
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

class _HeaderPainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.redAccent;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * .25);
    path.quadraticBezierTo(
        size.width * .5, size.height * .45, size.width, size.height * .25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
