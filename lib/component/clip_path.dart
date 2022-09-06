import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.09303797,0);
    path_0.cubicTo(size.width*0.06836278,0,size.width*0.04469823,size.height*0.01580353,size.width*0.02725025,size.height*0.04393408);
    path_0.cubicTo(size.width*0.009802190,size.height*0.07206449,0,size.height*0.1102176,0,size.height*0.1500000);
    path_0.lineTo(0,size.height*0.3000000);
    path_0.cubicTo(0,size.height*0.3132612,size.width*0.003267392,size.height*0.3259776,size.width*0.009083392,size.height*0.3353551);
    path_0.cubicTo(size.width*0.01489937,size.height*0.3447327,size.width*0.02278759,size.height*0.3500000,size.width*0.03101266,size.height*0.3500000);
    path_0.cubicTo(size.width*0.05568785,size.height*0.3500000,size.width*0.07935241,size.height*0.3658041,size.width*0.09680038,size.height*0.3939347);
    path_0.cubicTo(size.width*0.1142485,size.height*0.4220653,size.width*0.1240506,size.height*0.4602184,size.width*0.1240506,size.height*0.5000000);
    path_0.cubicTo(size.width*0.1240506,size.height*0.5397816,size.width*0.1142485,size.height*0.5779347,size.width*0.09680038,size.height*0.6060653);
    path_0.cubicTo(size.width*0.07935241,size.height*0.6341959,size.width*0.05568785,size.height*0.6500000,size.width*0.03101266,size.height*0.6500000);
    path_0.cubicTo(size.width*0.02278759,size.height*0.6500000,size.width*0.01489937,size.height*0.6552673,size.width*0.009083392,size.height*0.6646449);
    path_0.cubicTo(size.width*0.003267392,size.height*0.6740224,0,size.height*0.6867388,0,size.height*0.7000000);
    path_0.lineTo(0,size.height*0.8500000);
    path_0.cubicTo(0,size.height*0.8897816,size.width*0.009802190,size.height*0.9279347,size.width*0.02725025,size.height*0.9560653);
    path_0.cubicTo(size.width*0.04469823,size.height*0.9841959,size.width*0.06836278,size.height,size.width*0.09303797,size.height);
    path_0.lineTo(size.width*0.8993671,size.height);
    path_0.cubicTo(size.width*0.9240418,size.height,size.width*0.9477076,size.height*0.9841959,size.width*0.9651544,size.height*0.9560653);
    path_0.cubicTo(size.width*0.9826025,size.height*0.9279347,size.width*0.9924051,size.height*0.8897816,size.width*0.9924051,size.height*0.8500000);
    path_0.lineTo(size.width*0.9924051,size.height*0.7000000);
    path_0.cubicTo(size.width*0.9924051,size.height*0.6867388,size.width*0.9891380,size.height*0.6740224,size.width*0.9833215,size.height*0.6646449);
    path_0.cubicTo(size.width*0.9775063,size.height*0.6552673,size.width*0.9696177,size.height*0.6500000,size.width*0.9613924,size.height*0.6500000);
    path_0.cubicTo(size.width*0.9367177,size.height*0.6500000,size.width*0.9130532,size.height*0.6341959,size.width*0.8956051,size.height*0.6060653);
    path_0.cubicTo(size.width*0.8781570,size.height*0.5779347,size.width*0.8683544,size.height*0.5397816,size.width*0.8683544,size.height*0.5000000);
    path_0.cubicTo(size.width*0.8683544,size.height*0.4602184,size.width*0.8781570,size.height*0.4220653,size.width*0.8956051,size.height*0.3939347);
    path_0.cubicTo(size.width*0.9130532,size.height*0.3658041,size.width*0.9367177,size.height*0.3500000,size.width*0.9613924,size.height*0.3500000);
    path_0.cubicTo(size.width*0.9696177,size.height*0.3500000,size.width*0.9775063,size.height*0.3447327,size.width*0.9833215,size.height*0.3353551);
    path_0.cubicTo(size.width*0.9891380,size.height*0.3259776,size.width*0.9924051,size.height*0.3132612,size.width*0.9924051,size.height*0.3000000);
    path_0.lineTo(size.width*0.9924051,size.height*0.1500000);
    path_0.cubicTo(size.width*0.9924051,size.height*0.1102176,size.width*0.9826025,size.height*0.07206449,size.width*0.9651544,size.height*0.04393408);
    path_0.cubicTo(size.width*0.9477076,size.height*0.01580353,size.width*0.9240418,0,size.width*0.8993671,0);
    path_0.lineTo(size.width*0.09303797,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff00FF6A).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}