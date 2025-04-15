// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';

class CircularIconContainer extends StatelessWidget {
  final Widget child;
  final double size;
  final EdgeInsetsGeometry margin;
  const CircularIconContainer({
    super.key,
    required this.child,
     this.size = 32,
     this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Appcolor.primaryIconContainer,
        boxShadow: [
          BoxShadow(
            color: Appcolor.shadowColor,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2)
          )
        ]
      ),
      child: child,
    );
  }
}
