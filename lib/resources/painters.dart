// ignore_for_file: non_constant_identifier_names

import 'package:flutter/rendering.dart';

class WaveClipper extends CustomClipper<Path> {
  const WaveClipper();
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.7);

    final List<List<Offset>> dots = [
      [
        Offset(size.width * 0.1, size.height * 0.5),
        Offset(size.width * 0.15, size.height * 0.7),
      ],
      [
        Offset(size.width * 0.17, size.height * 0.6),
        Offset(size.width * 0.3, size.height * 0.8),
      ],
      [
        Offset(size.width * 0.4, size.height * 0.35),
        Offset(size.width * 0.5, size.height * 0.5),
      ],
      [
        Offset(size.width * 0.6, size.height * 0.2),
        Offset(size.width * 0.7, size.height * 0.4),
      ],
      [
        Offset(size.width * 0.8, size.height * 0.28),
        Offset(size.width * 0.81, size.height * 0.5),
      ],
      [
        Offset(size.width * 0.9, size.height * 0.37),
        Offset(size.width, size.height * 0.4),
      ],
    ];
    for (final dot in dots) {
      path.quadraticBezierTo(
        dot[0].dx,
        dot[0].dy,
        dot[1].dx,
        dot[1].dy,
      );
    }

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ShipPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(264, 151);
    path_0.cubicTo(266, 151, 267, 152, 266, 154);
    path_0.lineTo(265, 155);
    path_0.lineTo(242, 183);
    path_0.lineTo(230, 198);
    path_0.lineTo(221, 206);
    path_0.lineTo(221, 208);
    path_0.lineTo(220, 209);
    path_0.lineTo(219, 209);
    path_0.cubicTo(211, 212, 195, 210, 188, 210);
    path_0.lineTo(137, 212);
    path_0.cubicTo(103, 213, 67, 216, 33, 212);
    path_0.lineTo(32, 211);
    path_0.lineTo(31, 210);
    path_0.cubicTo(20, 193, 8, 175, 0, 156);
    path_0.lineTo(0, 155);
    path_0.lineTo(1, 154);
    path_0.lineTo(25, 152);
    path_0.cubicTo(29, 141, 35, 129, 41, 119);
    path_0.lineTo(43, 118);
    path_0.lineTo(45, 117);
    path_0.lineTo(51, 117);
    path_0.cubicTo(52, 106, 55, 96, 57, 86);
    path_0.lineTo(58, 85);
    path_0.lineTo(59, 84);
    path_0.lineTo(58, 84);
    path_0.lineTo(59, 84);
    path_0.lineTo(69, 83);
    path_0.arcToPoint(const Offset(68, 56),
        radius: const Radius.elliptical(105, 105), rotation: 0, largeArc: false, clockwise: true);
    path_0.lineTo(69, 54);
    path_0.lineTo(89, 52);
    path_0.lineTo(91, 54);
    path_0.lineTo(92, 55);
    path_0.cubicTo(92, 64, 94, 73, 93, 82);
    path_0.lineTo(99, 82);
    path_0.lineTo(98, 74);
    path_0.lineTo(99, 66);
    path_0.lineTo(100, 66);
    path_0.lineTo(105, 65);
    path_0.lineTo(111, 66);
    path_0.lineTo(111, 67);
    path_0.lineTo(112, 68);
    path_0.lineTo(112, 82);
    path_0.lineTo(169, 80);
    path_0.lineTo(171, 82);
    path_0.lineTo(180, 114);
    path_0.lineTo(189, 114);
    path_0.arcToPoint(const Offset(214, 152),
        radius: const Radius.elliptical(302, 302), rotation: 0, largeArc: false, clockwise: true);
    path_0.lineTo(264, 151);
    path_0.close();
    path_0.moveTo(236, 183);
    path_0.lineTo(261, 155);
    path_0.lineTo(133, 158);
    path_0.cubicTo(90, 159, 45, 161, 2, 156);
    path_0.lineTo(18, 179);
    path_0.lineTo(133, 178);
    path_0.cubicTo(167, 176, 201, 182, 235, 182);
    path_0.lineTo(236, 183);
    path_0.close();
    path_0.moveTo(231, 190);
    path_0.lineTo(235, 185);
    path_0.cubicTo(201, 186, 167, 180, 133, 181);
    path_0.cubicTo(95, 182, 57, 183, 19, 181);
    path_0.lineTo(34, 208);
    path_0.lineTo(35, 209);
    path_0.lineTo(126, 209);
    path_0.lineTo(172, 207);
    path_0.lineTo(195, 206);
    path_0.lineTo(218, 208);
    path_0.lineTo(218, 205);
    path_0.cubicTo(220, 200, 229, 192, 231, 190);
    path_0.close();
    path_0.moveTo(211, 152);
    path_0.lineTo(189, 118);
    path_0.cubicTo(141, 120, 92, 122, 45, 120);
    path_0.lineTo(44, 120);
    path_0.lineTo(28, 152);
    path_0.lineTo(133, 154);
    path_0.lineTo(211, 152);
    path_0.close();
    path_0.moveTo(177, 114);
    path_0.lineTo(167, 84);
    path_0.cubicTo(133, 86, 95, 90, 60, 86);
    path_0.lineTo(60, 87);
    path_0.lineTo(53, 117);
    path_0.lineTo(177, 114);
    path_0.close();
    path_0.moveTo(101, 82);
    path_0.lineTo(110, 82);
    path_0.lineTo(109, 69);
    path_0.lineTo(105, 69);
    path_0.lineTo(101, 68);
    path_0.lineTo(101, 82);
    path_0.close();
    path_0.moveTo(91, 82);
    path_0.cubicTo(89, 74, 89, 65, 89, 56);
    path_0.lineTo(70, 56);
    path_0.cubicTo(72, 64, 72, 75, 71, 83);
    path_0.lineTo(91, 82);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(261, 155);
    path_1.lineTo(236, 183);
    path_1.cubicTo(202, 183, 167, 176, 133, 178);
    path_1.lineTo(18, 179);
    path_1.lineTo(2, 156);
    path_1.cubicTo(45, 161, 90, 159, 133, 158);
    path_1.lineTo(261, 155);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = const Color(0xffccecf8).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(235, 185);
    path_2.lineTo(231, 190);
    path_2.cubicTo(229, 192, 220, 200, 218, 205);
    path_2.lineTo(218, 208);
    path_2.lineTo(195, 206);
    path_2.lineTo(172, 207);
    path_2.lineTo(126, 209);
    path_2.lineTo(35, 209);
    path_2.lineTo(34, 208);
    path_2.lineTo(19, 181);
    path_2.cubicTo(57, 183, 95, 182, 133, 181);
    path_2.cubicTo(167, 180, 201, 186, 235, 185);
    path_2.close();
    path_2.moveTo(189, 118);
    path_2.lineTo(211, 152);
    path_2.lineTo(133, 154);
    path_2.lineTo(28, 152);
    path_2.lineTo(44, 120);
    path_2.lineTo(45, 120);
    path_2.cubicTo(92, 122, 141, 120, 189, 118);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = const Color(0xff00a0db).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(167, 84);
    path_3.lineTo(177, 114);
    path_3.lineTo(53, 117);
    path_3.lineTo(60, 87);
    path_3.lineTo(60, 86);
    path_3.cubicTo(95, 90, 133, 86, 167, 84);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = const Color(0xffccecf8).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(110, 82);
    path_4.lineTo(101, 82);
    path_4.lineTo(101, 68);
    path_4.lineTo(105, 69);
    path_4.lineTo(109, 69);
    path_4.lineTo(110, 82);
    path_4.close();
    path_4.moveTo(89, 56);
    path_4.cubicTo(89, 65, 89, 74, 91, 82);
    path_4.lineTo(71, 83);
    path_4.cubicTo(72, 75, 72, 64, 70, 56);
    path_4.lineTo(89, 56);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = const Color(0xff00a0db).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
