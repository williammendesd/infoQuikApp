import 'package:flutter/material.dart';
import 'departamento.dart';

class Treinamento extends StatelessWidget {
  final int treinamentoId;
  final String descricao;
  final String dataCriacao;
  final String dataUltimaAlteracao;
  final String titulo;
  final String corpoTexto;
  final String tipo;
  final String status;
  final Departamento departamento;
  final List<Departamento> departamentos = [];

  Treinamento(
      {
      required this.treinamentoId,
      required this.descricao,
      required this.dataCriacao,
      required this.dataUltimaAlteracao,
      required this.titulo,
      required this.corpoTexto,
      required this.tipo,
      required this.status,
      required this.departamento,});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
