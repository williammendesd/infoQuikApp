import 'package:flutter/material.dart';
import 'package:project_infoquik/constants.dart';
import 'package:project_infoquik/models/treinamento.dart';
import 'package:project_infoquik/pages/conteudo_treinamento_page.dart';
import 'package:intl/intl.dart';

class TreinamentoPage extends StatefulWidget {
  Treinamento treinamento;

  TreinamentoPage({super.key, required this.treinamento});

  @override
  State<TreinamentoPage> createState() => _TreinamentoPageState();
}

class _TreinamentoPageState extends State<TreinamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: pantone306c,
        title: Text(
          'Detalhes do treinamento',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(4.0),
              alignment: Alignment.center,
              child: Text(
                widget.treinamento.titulo,
                style: TextStyle(
                  fontSize: 22,

                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'Departamento ${widget.treinamento.departamento.nome}',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: coolGray5,
              ),
              child: Text(
                widget.treinamento.corpoTexto,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              alignment: Alignment.centerLeft,
              child: Text('Publicação: ${widget.treinamento.dataCriacao}'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(2.0),
              child: Text(
                  'Última atualização: ${widget.treinamento.dataUltimaAlteracao}'),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width * 0.94,
        height: MediaQuery.of(context).size.height * 0.074,
        margin: EdgeInsets.only(bottom: 26,),
        // padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01,
        //   vertical: MediaQuery.of(context).size.height * 0.01,),
        child: FloatingActionButton(
          tooltip: 'Acessar conteúdo',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => ConteudoTreinamentoPage(
                    key: widget.key,
                    treinamento: widget.treinamento,
                  )),
            );
          },
          backgroundColor: pantone339c,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Acessar conteúdo', style: TextStyle(fontSize: 20,),),
              SizedBox(width: 12),
              Icon(Icons.arrow_forward, size: 40,),
            ],
          ),

        ),
      ),
    );
  }
}
