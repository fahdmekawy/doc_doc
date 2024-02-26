import 'package:doc_doc/core/routing/app_router.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(DocApp(router: AppRouter()));
}
