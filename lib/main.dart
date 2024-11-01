import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_infoquik/models/treinamento.dart';
import 'package:project_infoquik/repositories/treinamentos_repository.dart';
import 'package:project_infoquik/themes/my_theme.dart';
import 'package:provider/provider.dart';
import './pages/home_funcionario.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TreinamentoRepository(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'InfoQuik Eurofarma',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: HomeFuncionario(),
    );
  }
}
