import 'package:flutter/material.dart';
import 'package:project_infoquik/components/botao_quadrado.dart';
import 'package:project_infoquik/components/botao_linha.dart';
import 'package:project_infoquik/constants.dart';
import 'package:project_infoquik/controllers/home_funcionario_controller.dart';
import 'package:project_infoquik/pages/treinamento_page.dart';
import 'package:project_infoquik/pages/add_treinamento_page.dart';
import 'package:project_infoquik/repositories/treinamentos_repository.dart';
import '../models/treinamento.dart';
import 'package:provider/provider.dart';

import 'package:get/get.dart';

class HomeFuncionario extends StatefulWidget {
  @override
  State<HomeFuncionario> createState() => _HomeFuncionarioState();
}

class _HomeFuncionarioState extends State<HomeFuncionario> {
  var controller;
  Color listaClearMode = Color.fromRGBO(45, 45, 45, 1);

  @override
  void initState() {
    super.initState();
    controller = HomeFuncionarioController();
  }

  formTreinamentoPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => AddTreinamentoPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        actions: [
          IconButton(onPressed: formTreinamentoPage, icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        textDirection: TextDirection.ltr,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 5.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Bem-vindo(a), Maria',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Treinamentos indicados para o seu perfil',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Consumer<TreinamentoRepository>(
                builder: (context, repositorio, child) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: repositorio.treinamentos.length < 5
                        ? repositorio.treinamentos.length
                        : repositorio.treinamentos.length > 0
                            ? 4
                            : 0,
                    itemBuilder: (contexto, index) {
                      final List<Treinamento> tabela = controller.tabela;
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 3.0,
                          bottom: 3.0,
                          left: 6.0,
                          right: 6.0,
                        ),
                        child: BotaoLinha(
                          index: index,
                          controller: controller,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Ver mais',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              style: TextButton.styleFrom(
                // padding: EdgeInsets.all(20.0),
                backgroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  side: BorderSide(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoQuadrado(
                nome: 'Presença',
                icone: Icons.group,
                cor: mediumBlueC,
              ),
              SizedBox(
                width: 8,
              ),
              BotaoQuadrado(
                nome: 'Perfil',
                icone: Icons.account_circle,
                cor: mediumBlueC,
              ),
              SizedBox(
                width: 8,
              ),
              BotaoQuadrado(
                nome: 'Dúvidas',
                icone: Icons.question_mark,
                cor: mediumBlueC,
              ),
              SizedBox(
                width: 8,
              ),
              BotaoQuadrado(
                nome: 'Chat',
                icone: Icons.question_answer_outlined,
                cor: pantone321c,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
