import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:project_infoquik/models/departamento.dart';
import '../models/treinamento.dart';

class TreinamentoRepository extends ChangeNotifier {
  final List<Treinamento> _treinamentos = [];

  // n permitir que modifique a lista, encapsulamento, com o Unmodifiable.
  UnmodifiableListView<Treinamento> get treinamentos => UnmodifiableListView(_treinamentos);

  void addDepartamento(
      {required Treinamento treinamento, required Departamento departamento}) {
    treinamento.departamentos.add(departamento);
    // notifyListeners();
  }

  void addTreinamento(
      {required Treinamento treinamento}) {
    treinamentos.add(treinamento);
    // notifyListeners();
  }

  TreinamentoRepository() {
    _treinamentos.addAll([
      Treinamento(
        treinamentoId: 1,
        descricao: 'descricao',
        dataCriacao: 'dataCriacao',
        dataUltimaAlteracao: 'dataUltima_alteracao',
        titulo: 'Conscientização Ambiental',
        corpoTexto:
            'O treinamento auxiliar o participante na elaboração do LAIA que visa levantar os aspectos ambientais e seus respectivos impactos ao meio ambiente, ou seja, o levantamento trará quais elementos de uma atividade, produto ou serviço da organização podem interagir com o meio ambiente, e quais são essas modificações ao meio ambiente ocasionadas por cada aspecto, podendo ser impactos benéficos ou adversos.',
        tipo: 'tipo',
        status: 'status',
        departamento: Departamento(
          departamentoId: 1,
          nome: 'RH',
        ),
      ),
      Treinamento(
        treinamentoId: 2,
        descricao: 'descricao',
        dataCriacao: 'dataCriacao',
        dataUltimaAlteracao: 'dataUltima_alteracao',
        titulo: 'titulo',
        corpoTexto: 'corpoTexto',
        tipo: 'tipo',
        status: 'status',
        departamento: Departamento(
          departamentoId: 1,
          nome: 'RH',
        ),
      ),
      Treinamento(
        treinamentoId: 3,
        descricao: 'descricao',
        dataCriacao: 'dataCriacao',
        dataUltimaAlteracao: 'dataUltima_alteracao',
        titulo: 'titulo',
        corpoTexto: 'corpoTexto',
        tipo: 'tipo',
        status: 'status',
        departamento: Departamento(
          departamentoId: 1,
          nome: 'RH',
        ),
      ),
    ]);
  }
}
