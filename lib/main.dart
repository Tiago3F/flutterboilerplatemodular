import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() => runApp(ProviderScope(child: ModularApp(module: AppModule(), child: const AppWidget())));