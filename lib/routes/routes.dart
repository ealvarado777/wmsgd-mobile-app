import 'package:flutter/material.dart';
import '../pages/imprimir.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'imprimir': (_) => PrintPage(),
};
