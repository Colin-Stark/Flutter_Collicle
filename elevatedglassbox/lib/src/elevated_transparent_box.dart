import 'dart:ui';

import 'package:flutter/material.dart';

class ElevatedBox extends StatelessWidget {
  final double elevation;
  final Color shadowcolor;
  final Color containercolor;
  final Color bordercolor;
  final double blur;
  final double decorationOpacity;
  final double borderopacity;
  final Widget child;
  final double borderradius;
  final double borderwidth;
  const ElevatedBox({
    Key? key,
    required this.elevation,
    required this.shadowcolor,
    required this.blur,
    required this.decorationOpacity,
    required this.child,
    required this.borderradius,
    required this.borderopacity,
    required this.containercolor,
    required this.bordercolor,
    required this.borderwidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: elevation,
      shadowColor: shadowcolor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderradius),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blur,
            sigmaY: blur,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: containercolor.withOpacity(decorationOpacity),
              borderRadius: BorderRadius.all(Radius.circular(borderradius)),
              border: Border.all(
                width: borderwidth,
                color: bordercolor.withOpacity(borderopacity),
              ),
            ),
            child: child,
          ),
        ),
      );
  }
}
