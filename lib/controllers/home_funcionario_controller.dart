import '../models/treinamento.dart';
import '../repositories/treinamentos_repository.dart';

class HomeFuncionarioController {
  TreinamentoRepository treinamentoRepository = TreinamentoRepository();

  List<Treinamento> get tabela => treinamentoRepository.treinamentos;

  HomeFuncionarioController() {
    treinamentoRepository = TreinamentoRepository();
  }
}
