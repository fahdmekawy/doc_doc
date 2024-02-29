import 'core/routing/app_router_imports.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  setupGetIt();
  // to fix texts being hidden in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(router: AppRouter()));
}
