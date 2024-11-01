import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_infoquik/models/treinamento.dart';

class ConteudoTreinamentoPage extends StatefulWidget {
  Treinamento treinamento;
  double tamanhoFonte = 18;

  ConteudoTreinamentoPage({super.key, required this.treinamento});

  @override
  State<ConteudoTreinamentoPage> createState() =>
      _ConteudoTreinamentoPageState();
}

class _ConteudoTreinamentoPageState extends State<ConteudoTreinamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.treinamento.titulo),
        backgroundColor: Colors.cyanAccent[400],
      ),
      body: GestureDetector(
        onLongPressDown: (details){
          setState(() {
            widget.tamanhoFonte = 1;
          });
        },
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.treinamento.corpoTexto,
              style: TextStyle(
                fontSize: widget.tamanhoFonte,
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.black,
            )),
            alignment: Alignment.center,
            height: 100,
            width: MediaQuery.sizeOf(context).width * (1 / 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.checklist_sharp,
                  size: 50,
                ),
                Text('Presença'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (widget.tamanhoFonte > 12) {
                  widget.tamanhoFonte -= 2;
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
              )),
              alignment: Alignment.center,
              height: 100,
              width: MediaQuery.sizeOf(context).width * (1 / 3),
              child: Icon(
                Icons.text_decrease,
                size: 35,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (widget.tamanhoFonte < 28) {
                  widget.tamanhoFonte += 2;
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
              )),
              alignment: Alignment.center,
              height: 100,
              width: MediaQuery.sizeOf(context).width * (1 / 3),
              child: Icon(
                Icons.text_increase,
                size: 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
