import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_infoquik/components/input_linha.dart';
import 'package:project_infoquik/constants.dart';
import 'package:project_infoquik/models/departamento.dart';
import 'package:project_infoquik/models/treinamento.dart';
import 'package:project_infoquik/repositories/treinamentos_repository.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class AddTreinamentoPage extends StatefulWidget {
  AddTreinamentoPage({
    super.key,
  });

  @override
  State<AddTreinamentoPage> createState() => _AddTreinamentoPageState();
}

class _AddTreinamentoPageState extends State<AddTreinamentoPage> {
  save() {
    Provider.of<TreinamentoRepository>(context, listen: false).addTreinamento(
      treinamento: Treinamento(
        treinamentoId: 2,
        descricao: _descricao.text,
        dataCriacao: _ano.text,
        dataUltimaAlteracao: 'dataUltimaAlteracao',
        titulo: _titulo.text,
        corpoTexto: _corpoTexto.text,
        tipo: 'tipo',
        status: 'status',
        departamento: Departamento(departamentoId: 10, nome: 'Departamento'),
      ),
    );

    Navigator.pop(context);

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Salvo com sucesso!')));
  }

  final _titulo = TextEditingController();
  final _descricao = TextEditingController();
  final _corpoTexto = TextEditingController();
  final _ano = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar treinamento'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            InputLinha(editingController: _ano, label: 'Ano', tipoTeclado: TextInputType.datetime, textError: 'Informe o ano',),
            InputLinha(editingController: _titulo, label: 'Titulo', tipoTeclado: TextInputType.text, textError: 'Informe o titulo',),
            InputLinha(editingController: _descricao, label: 'Descrição', tipoTeclado: TextInputType.text, textError: 'Insira uma descrição',),
            InputLinha(editingController: _corpoTexto, label: 'Corpo de Texto', tipoTeclado: TextInputType.text, textError: 'Preencha o texto',),

            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(

                  onPressed: () {
                    // DateTime now = DateTime.now();
                    // String formattedDate = DateFormat('dd/MM/yyyy').format(now);
                    if (_formKey.currentState!.validate()) {
                      save();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Salvar'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
