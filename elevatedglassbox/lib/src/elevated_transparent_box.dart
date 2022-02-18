import 'dart:ui';

import 'package:flutter/material.dart';

class ElevatedBox extends StatelessWidget {
  final double elevation;
  final Color shadowcolor;
  final double blur;
  final double opacity;
  final Widget child;
  final double borderradius;
  const ElevatedBox({
    Key? key,
    required this.elevation,
    required this.shadowcolor,
    required this.blur,
    required this.opacity,
    required this.child,
    required this.borderradius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
                color: Colors.white.withOpacity(opacity),
                borderRadius: BorderRadius.all(Radius.circular(borderradius)),
                border: Border.all(
                    width: 1.5, color: Colors.white.withOpacity(0.2))),
            child: child,
          ),
        ),
      ),
    );
  }
}
