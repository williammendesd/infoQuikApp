import 'package:flutter/material.dart';
import 'package:project_infoquik/constants.dart';
import 'package:provider/provider.dart';
import '../models/treinamento.dart';
import '../pages/treinamento_page.dart';
import 'package:get/get.dart';

class BotaoLinha extends StatelessWidget {
  int index;
  var controller;

  BotaoLinha({
    required this.index,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext contexto) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: coolGray11,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.zero, // Remove padding para que o botão siga as dimensões do child
      ),
      onPressed: () {
        Get.to((){
          return TreinamentoPage(treinamento: controller.tabela[index], key: Key(controller.tabela[index].treinamentoId.toString()));
        });

        // Navigator.push(
        //   contexto,
        //   MaterialPageRoute(
        //     builder: (_) => TreinamentoPage(
        //         key: Key(
        //             controller.tabela[index].treinamentoId.toString()),
        //         treinamento: controller.tabela[index]),
        //   ),
        // );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              height: 40,
              alignment: Alignment.topLeft,
              child: Text(
                controller.tabela[index].titulo,
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                'RH',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
