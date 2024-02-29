import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

EdgeInsets symmetricPadding({double vertical = 0, double horizontal = 0}) =>
    EdgeInsets.symmetric(vertical: vertical.h, horizontal: horizontal.w);

EdgeInsets onlyPadding(
    {double top = 0,
      double bottom = 0,
      double left = 0,
      double right = 0}) =>
    EdgeInsets.only(top: top.h, bottom: bottom.h, left: left.w, right: right.w);

EdgeInsets allPadding({double padding = 0}) => EdgeInsets.all(padding);